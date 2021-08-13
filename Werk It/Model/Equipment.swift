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
    let chair: Bool
    let bench: Bool
    let weight: Bool

    init (sweedishBall: Bool = false,
          resistanceBands: Bool = false,
          chair: Bool = false,
          bench: Bool = false,
          weight: Bool = false,
          hasAll: Bool = false) {
        self.sweedishBall = sweedishBall || hasAll
        self.resistanceBands = resistanceBands || hasAll
        self.chair = chair || hasAll
        self.bench = bench || hasAll
        self.weight = weight || hasAll
    }

    // todo there must be a better way to do this, for now I'm being dumb.
    func meetsRequirements (requirements: Equipment) -> Bool {
        let missingBall = requirements.sweedishBall && !sweedishBall
        let missingBands = requirements.resistanceBands && !resistanceBands
        let missingChair = requirements.chair && !chair
        let missingBench = requirements.bench && !bench
        let missingWeight = requirements.weight && !weight

        return !(missingBall || missingBands || missingChair || missingBench || missingWeight)
    }
}


