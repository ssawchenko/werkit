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
    let requiresSweedishBall: Bool
    let requiresResistanceBands: Bool
    let hasTimerSeconds: Int

    init(title: String,
         reps: Int,
         requiresSweedishBall: Bool = false,
         requiresResistanceBands: Bool = false,
         hasTimerSeconds: Int = 0) {
        self.title = title
        self.reps = reps
        self.requiresResistanceBands = requiresResistanceBands
        self.requiresSweedishBall = requiresSweedishBall
        self.hasTimerSeconds = hasTimerSeconds
    }
}
