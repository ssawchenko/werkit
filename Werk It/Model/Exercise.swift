//
//  Exercise2.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-11.
//

import Foundation

struct Exercise {
    let name: String
    let description: String
    let variations: [Variation]

    func doableVariations(userHasEquipment: Equipment) -> [Variation] {
        return variations.filter { variation in
            guard let equipment = variation.equipment else {
                return true
            }
            return userHasEquipment.meetsRequirements(requirements: equipment)
        }
    }
}
