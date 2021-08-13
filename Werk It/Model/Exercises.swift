//
//  Exercises.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-10.
//

import Foundation

// todo instead store as json?

struct Exercises {
    static let deadBug =
        Exercise(
            name: "Dead Bug",
            description: "Lie on back with arms and legs in air, legs at 90 degrees. Lower opposite arm and leg down to floor, but try not to touch",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: nil
                ),
                Variation(
                    name: "With Ball",
                    description: "Keep ball suspended between arm and leg that remain in the air",
                    difficulty: Difficulty.easy,
                    equipment: Equipment(sweedishBall: true),
                    reps: 12,
                    seconds: nil),
                Variation(
                    name: "With Band",
                    description: "Place looped band around middle of feet",
                    difficulty: Difficulty.easy,
                    equipment: Equipment(resistanceBands: true),
                    reps: 12,
                    seconds: nil)
            ]
        )

    static let windshieldWipers =
        Exercise(
            name: "Windshield Wipers",
            description: "Lie on floor with legs in air, knees bent at 90 degrees. Alternate lower legs in bent position to the floor on either side of your body. Arms splayed out in a T for support.",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: nil
                )
            ]
        )

    static let birdDogs =
        Exercise(
            name: "Bird Dogs",
            description: "Start from hands and knees, alternate lifting opposite arm and leg up to as straight and horizontal as possible.",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: nil
                )
            ]
        )

    static let allCoreExercises = [deadBug, windshieldWipers, birdDogs]
    static let allArmExercises = [deadBug, windshieldWipers, birdDogs]
    static let allLegExercises = [deadBug, windshieldWipers, birdDogs]

//    static let allCoreExersises: [Exercise] = [
//        Exercise(title: "Dead Bug w/Band",
//                 difficulty: Difficulty.easy,
//                 reps: 20,
//                 requirements: Equipment(resistanceBands: true)),
//
//        Exercise(title: "Dead Bug w/Ball",
//                 difficulty: Difficulty.easy,
//                 reps: 20,
//                 requirements: Equipment(sweedishBall: true)),
//
//        Exercise(title: "Windshield Wipers",
//                 difficulty: Difficulty.easy,
//                 reps: 20)
//    ]

//    static let allArmExercises: [Exercise] = [
//        Exercise(title: "Incline Pushups",
//                 difficulty: Difficulty.easy,
//                 reps: 10,
//                 requirements: Equipment(bench: true)),
//
//        Exercise(title: "Resistance Band Pulls",
//                 difficulty: Difficulty.easy,
//                 reps: 10,
//                 requirements: Equipment(resistanceBands: true)),
//
//        Exercise(title: "Side Planks (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 2,
//                 hasTimerSeconds: 20),
//
//        Exercise(title: "Bird Dogs (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 12)
//    ]
//
//    static let allLegExercises: [Exercise] = [
//        Exercise(title: "Squats w/Weights",
//                 difficulty: Difficulty.easy,
//                 reps: 20),
//
//        Exercise(title: "Ham Curls (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 16),
//
//        Exercise(title: "Split Squats w/Weights (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 10),
//
//        Exercise(title: "Lunges w/Weights (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 10),
//
//        Exercise(title: "Monster Walks (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 10,
//                 requirements: Equipment(resistanceBands: true)),
//
//        Exercise(title: "Wall Sits",
//                 difficulty: Difficulty.easy,
//                 reps: 1,
//                 hasTimerSeconds: 30),
//
//        Exercise(title: "Bulgarian Squats (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 12,
//                 requirements: Equipment(chair: true)),
//
//        Exercise(title: "Suitcase Hinge (L/R)",
//                 difficulty: Difficulty.easy,
//                 reps: 12,
//                 requirements: Equipment(weight: true))
//    ]
}

