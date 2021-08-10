//
//  PersonalTrainer.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-09.
//

import Foundation

struct PersonalTrainer {

    let allCoreExersises: [Exercise] = [
        Exercise(title: "Dead Bug w/Band",
                 reps: 20,
                 requirements: Equipment(resistanceBands: true)),
        Exercise(title: "Dead Bug w/Ball",
                 reps: 20,
                 requirements: Equipment(sweedishBall: true)),
        Exercise(title: "Windshield Wipers", reps: 20)
    ]

    let allArmExercises: [Exercise] = [
        Exercise(title: "Incline Pushups", reps: 10),
        Exercise(title: "Resistance Band Pulls",
                 reps: 10,
                 requirements: Equipment(resistanceBands: true)),
        Exercise(title: "Side Planks",
                 reps: 2,
                 hasTimerSeconds: 20)
    ]

    let allLegExercises: [Exercise] = [
        Exercise(title: "Squats w/Weights", reps: 20),
        Exercise(title: "Ham Curls", reps: 16),
        Exercise(title: "Split Squats w/Weights", reps: 10),
        Exercise(title: "Lunges w/Weights", reps: 10),
        Exercise(title: "Monster Walks",
                 reps: 2,
                 requirements: Equipment(resistanceBands: true)),
        Exercise(title: "Wall Sits", reps: 1, hasTimerSeconds: 30)
    ]

    func generateWorkout(userEquipment: Equipment) -> [Exercise] {
        var firstExerciseList = allCoreExersises.filter { exercise in
            exercise.canBeDone(userHasEquipment: userEquipment)
        }
        var secondExerciseList = allArmExercises
        var thirdExerciseList = allLegExercises

        var result: [Exercise] = []
        result.append(getAndRemoveFrom(&firstExerciseList))
        result.append(getAndRemoveFrom(&secondExerciseList))
        result.append(getAndRemoveFrom(&thirdExerciseList))

        return result
    }

    private func getAndRemoveFrom(_ excerises: inout [Exercise]) -> Exercise {
        let index = Int.random(in: 0..<excerises.count)
        return excerises.remove(at: index)
    }
    
}
