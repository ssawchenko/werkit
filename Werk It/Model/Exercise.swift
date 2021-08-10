//
//  Exercise.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-09.
//

import Foundation

struct Exercise {
    let title: String
    let reps: Int
    let requirements: Equipment
    let hasTimerSeconds: Int

    init(title: String,
         reps: Int,
         requirements: Equipment = Equipment(),
         hasTimerSeconds: Int = 0) {
        self.title = title
        self.reps = reps
        self.requirements = requirements
        self.hasTimerSeconds = hasTimerSeconds
    }

    func meetsRequirements(_ requirements: Equipment) {
        return
    }

    func canBeDone(userHasEquipment: Equipment) -> Bool {
        if (requirements.sweedishBall && !userHasEquipment.sweedishBall) {
            return false
        }

        if (requirements.resistanceBands && !userHasEquipment.resistanceBands) {
            return false
        }

        return true
    }
}
