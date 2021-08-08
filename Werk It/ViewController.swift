//
//  ViewController.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-07.
//

import UIKit

class Exercise {
    let title: String

    init(title: String) {
        self.title = title
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var thirdLabel: UILabel!


    let allCoreExersises: [Exercise] = [
        Exercise(title: "Dead Bug w/Band"),
        Exercise(title: "Dead Bug w/Ball"),
        Exercise(title: "Windshield Wipers")
    ]

    let allArmExercises: [Exercise] = [
        Exercise(title: "Incline Pushups"),
        Exercise(title: "Resistance Band Pulls"),
        Exercise(title: "Side Planks")
    ]

    let allLegExercises: [Exercise] = [
        Exercise(title: "Squats w/Weights"),
        Exercise(title: "Ham Curls"),
        Exercise(title: "Split Squats"),
        Exercise(title: "Lunges w/Weights"),
        Exercise(title: "Monster Walks"),
        Exercise(title: "Wall Sits")
    ]

    var firstExerciseList : [Exercise] = []
    var secondExerciseList : [Exercise] = []
    var thirdExerciseList : [Exercise] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clickedWerkit(_ sender: UIButton) {
        firstExerciseList = allCoreExersises
        secondExerciseList = allArmExercises
        thirdExerciseList = allLegExercises

        firstLabel.text = getAndRemoveFrom(&firstExerciseList).title
        secondLabel.text = getAndRemoveFrom(&secondExerciseList).title
        thirdLabel.text = getAndRemoveFrom(&thirdExerciseList).title
    }


    private func getAndRemoveFrom(_ excerises: inout [Exercise]) -> Exercise {
        let index = Int.random(in: 0..<excerises.count)
        return excerises.remove(at: index)
    }
}

