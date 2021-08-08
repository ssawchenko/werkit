//
//  ViewController.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-07.
//

import UIKit
import AVFoundation

class Exercise {
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

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var thirdLabel: UILabel!

    // Timer UI
    // todo move this all to a reusable custom UI component
    @IBOutlet weak var hasTimerStackView: UIStackView!

    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var timerProgressBar: UIProgressView!

    var selectedExercise: Exercise? = nil

    var readyTimer = Timer()
    var exerciseTimer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondsPassed = 0

    let allCoreExersises: [Exercise] = [
        Exercise(title: "Dead Bug w/Band", reps: 20, requiresResistanceBands: true),
        Exercise(title: "Dead Bug w/Ball", reps: 20, requiresSweedishBall: true),
        Exercise(title: "Windshield Wipers", reps: 20)
    ]

    let allArmExercises: [Exercise] = [
        Exercise(title: "Incline Pushups", reps: 10),
        Exercise(title: "Resistance Band Pulls", reps: 10, requiresResistanceBands: true),
        Exercise(title: "Side Planks", reps: 2, hasTimerSeconds: 20)
    ]

    let allLegExercises: [Exercise] = [
        Exercise(title: "Squats w/Weights", reps: 20),
        Exercise(title: "Ham Curls", reps: 16),
        Exercise(title: "Split Squats w/Weights", reps: 10),
        Exercise(title: "Lunges w/Weights", reps: 10),
        Exercise(title: "Monster Walks", reps: 2, requiresResistanceBands: true),
        Exercise(title: "Wall Sits", reps: 1, hasTimerSeconds: 30)
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

        // For now force exercise to be hardcoded to second, but will be based on custom UI component eventually
        let secondExercise = getAndRemoveFrom(&secondExerciseList)
        setupTimer(exercise: secondExercise)

        firstLabel.text = getAndRemoveFrom(&firstExerciseList).title
        secondLabel.text = selectedExercise?.title
        thirdLabel.text = getAndRemoveFrom(&thirdExerciseList).title
    }

    private func getAndRemoveFrom(_ excerises: inout [Exercise]) -> Exercise {
        let index = Int.random(in: 0..<excerises.count)
        return excerises.remove(at: index)
    }

    private func setupTimer(exercise: Exercise) {
        selectedExercise = exercise
        totalTime = exercise.hasTimerSeconds
        timerLabel.text = "\(totalTime) seconds"
    }

    @IBAction func clickedStartTimer(_ sender: Any) {
        exerciseTimer.invalidate()

        timerProgressBar.progress = 0.0
        timerLabel.text = "GET READY"

        readyTimer = Timer.scheduledTimer(timeInterval: 3.0, target:self, selector: #selector(readyTimerFired), userInfo:nil, repeats: false)
    }

    @objc private func readyTimerFired() {
        // Now we can start the actual exercise timer.
        secondsPassed = 1
        timerLabel.text = "\(totalTime) seconds"
        exerciseTimer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }

    @objc private func updateTimer() {
        if secondsPassed < totalTime {
            let progress = Float(secondsPassed) / Float(totalTime)
            print(progress)
            let remainingTime = totalTime - secondsPassed

            timerProgressBar.progress = progress
            timerLabel.text = "\(remainingTime) seconds"

            secondsPassed += 1
        } else {
            timerProgressBar.progress = 1.0
            timerLabel.text = "Complete"
            exerciseTimer.invalidate()
        }
    }

}

