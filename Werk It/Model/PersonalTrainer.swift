//
//  PersonalTrainer.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-09.
//

import Foundation

struct PersonalTrainer {

    func generateWorkout(userEquipment: Equipment) -> [Exercise] {
        var firstExerciseList = getDoableExercises(Exercises.allCoreExercises, userEquipment)
        var secondExerciseList = getDoableExercises(Exercises.allArmExercises, userEquipment)
        var thirdExerciseList = getDoableExercises(Exercises.allLegExercises, userEquipment)

        var result: [Exercise] = []
        result.append(chooseRandomAndRemove(&firstExerciseList))
        result.append(chooseRandomAndRemove(&secondExerciseList))
        result.append(chooseRandomAndRemove(&thirdExerciseList))

        return result
    }

    private func selectVariantFor(_ exercise: Exercise) -> Variation {
        return exercise.variations.randomElement()!
    }

    private func getDoableExercises(_ exercises: [Exercise], _ userEquipment: Equipment) -> [Exercise] {

        return exercises
            .map { exercise in
                // Filter out all variants of the exercise that we do not have equipment for.
                let variations = exercise.doableVariations(userHasEquipment: userEquipment)

                // If no doable variations available, return nil, else
                // return a copy of the exercise with only the doable variants.
                if (variations.isEmpty) {
                    return nil
                } else {
                    return Exercise(name: exercise.name, description: exercise.description, variations: variations)
                }
            }
            .compactMap{$0}
    }

    private func chooseRandomAndRemove(_ excerises: inout [Exercise]) -> Exercise {
        let index = Int.random(in: 0..<excerises.count)
        return excerises.remove(at: index)
    }
    
}
