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

    static let inclinePushup =
        Exercise(
            name: "Incline Pushups",
            description: "",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: Equipment(bench: true),
                    reps: 12,
                    seconds: nil
                )
            ]
        )

    static let resistanceBandPulls =
        Exercise(
            name: "Resistance Band Pulls",
            description: "Pull band down behind back.",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: Equipment(resistanceBands: true),
                    reps: 12,
                    seconds: nil
                )
            ]
        )

    static let sidePlanks =
        Exercise(
            name: "Side Planks",
            description: "",
            variations: [
                Variation(
                    name: "Basic L/R",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 2,
                    seconds: 20
                )
            ]
        )

    static let allArmExercises = [inclinePushup, resistanceBandPulls, sidePlanks]

    static let squats =
        Exercise(
            name: "Squats",
            description: "You know it. You love it. Remember to lean back.",
            variations: [
                Variation(
                    name: "Basic",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                ),
                Variation(
                    name: "With single weight (L/R)",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: Equipment(weight: true),
                    reps: 12,
                    seconds: 2
                )
            ]
        )

    static let gluteBridge =
        Exercise(
            name: "Glute Bridge",
            description: "Lie on your back, push up into shoulder bridge. Alternate lifting up each leg",
            variations: [
                Variation(
                    name: "Basic (L/R)",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                )
            ]
        )

    static let hamCurls =
        Exercise(
            name: "Ham Curls",
            description: "Lie on your back, put legs on ball. Draw ball in and out using legs. We hates it.",
            variations: [
                Variation(
                    name: "Basic (L/R)",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                ),
                Variation(
                    name: "Single Leg",
                    description: "Draw ball in with both legs, push back out using one. Alternate legs.",
                    difficulty: Difficulty.medium,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                )
            ]
        )

    static let splitSquats =
        Exercise(
            name: "Split Squats",
            description: "Like a lunge, but do not return to standing. Full reps done on same leg, keep 2/3 weight on front leg.",
            variations: [
                Variation(
                    name: "Basic (L/R)",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                ),
                Variation(
                    name: "With Weights (L/R)",
                    description: nil,
                    difficulty: Difficulty.medium,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                ),
                Variation(
                    name: "Bulgarian (L/R)",
                    description: "Back leg is placed behind on bench. Add single weight if you have it.",
                    difficulty: Difficulty.medium,
                    equipment: Equipment(bench: true),
                    reps: 12,
                    seconds: 0
                )
            ]
        )

    static let lunges =
        Exercise(
            name: "Lunges",
            description: "Like a lunge, because it is a lunge. Start standing, step forward and lunge it out.",
            variations: [
                Variation(
                    name: "Basic (L/R)",
                    description: nil,
                    difficulty: Difficulty.easy,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                ),
                Variation(
                    name: "With Weights (L/R)",
                    description: nil,
                    difficulty: Difficulty.medium,
                    equipment: nil,
                    reps: 12,
                    seconds: 0
                )
            ]
        )

    static let suitcaseHinge =
        Exercise(
            name: "Suitcase Hinge",
            description: "Hinge from waist, lean forward on one leg. Keep standing leg locked and back straight. Keep core and glutes active. Try not to fall over.",
            variations: [
                Variation(
                    name: "With Weight (L/R)",
                    description: "Hold weight in opposite than standing hand.",
                    difficulty: Difficulty.easy,
                    equipment: Equipment(weight: true),
                    reps: 12,
                    seconds: 0
                )
            ]
        )

    static let monsterWalks =
        Exercise(
            name: "Monster Walks",
            description: "Put looped resistance band around the mid foot, start in a high squat position and then push outside foot out to walk laterally. Take X steps to one side and then X to the other side.",
            variations: [
                Variation(
                    name: "Basic",
                    description: "",
                    difficulty: Difficulty.easy,
                    equipment: Equipment(resistanceBands: true),
                    reps: 12,
                    seconds: 0
                )
            ]
        )

//        Exercise(title: "Wall Sits",
//                 difficulty: Difficulty.easy,
//                 reps: 1,
//                 hasTimerSeconds: 30),
//
//    ]

    static let allLegExercises = [squats, gluteBridge, hamCurls, splitSquats, lunges, suitcaseHinge, monsterWalks]
}

