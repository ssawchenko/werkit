//
//  Requirements.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-09.
//

import Foundation

struct Equipment {
    let sweedishBall: Bool
    let resistanceBands: Bool

    init (sweedishBall: Bool = false,
          resistanceBands: Bool = false,
          hasAll: Bool = false) {
        self.sweedishBall = sweedishBall || hasAll
        self.resistanceBands = resistanceBands || hasAll
    }
}


