//
//  ViewController.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-07.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var thirdLabel: UILabel!

    // Timer UI
    // todo move this all to a reusable custom UI component
    @IBOutlet weak var hasTimerStackView: UIStackView!

    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var timerProgressBar: UIProgressView!

    private let personalTrainer = PersonalTrainer()

    var selectedExercise: Exercise? = nil
    var readyTimer = Timer()
    var exerciseTimer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondsPassed = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = ""
        secondLabel.text = ""
        thirdLabel.text = ""
    }

    @IBAction func clickedWerkit(_ sender: UIButton) {
        //let hasEquipment = Equipment(sweedishBall: true, resistanceBands: true)
        let hasEquipment = Equipment(hasAll: true)
        let exercises = personalTrainer.generateWorkout(userEquipment: hasEquipment)

        // For now force exercise to be hardcoded to second, but will be based on custom UI component eventually
        setupTimer(exercise: exercises[1])

        firstLabel.text = exercises[0].title
        secondLabel.text = exercises[1].title
        thirdLabel.text = exercises[2].title
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
        playSound(soundName: "A")

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

    func playSound(soundName: String) {
        //let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        //player = try! AVAudioPlayer(contentsOf: url!)
        //player.play()
    }

}

