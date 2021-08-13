//
//  ViewController.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-07.
//

import UIKit
import AVFoundation

class WorkoutViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var thirdLabel: UILabel!

    // Timer UI
    // todo move this all to a reusable custom UI component
    @IBOutlet weak var hasTimerStackView: UIStackView!

    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var timerProgressBar: UIProgressView!

    private let personalTrainer = PersonalTrainer()

    var userHasEquipment = Equipment(hasAll: true)

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
        generateWorkout()
    }

    @IBAction func clickedWerkit(_ sender: UIButton) {
        generateWorkout()
    }

    private func generateWorkout() {
        let hasEquipment = Equipment(sweedishBall: true, resistanceBands: true)
        //let hasEquipment = Equipment(hasAll: true)
        let exercises = personalTrainer.generateWorkout(userEquipment: hasEquipment)

        // For now force exercise to be hardcoded to second, but will be based on custom UI component eventually
        setupTimer(exercise: exercises[1])

        firstLabel.text = exercises[0].name
        secondLabel.text = exercises[1].name
        thirdLabel.text = exercises[2].name
    }

    private func setupTimer(exercise: Exercise) {
        selectedExercise = exercise
        //totalTime = exercise.hasTimerSeconds
        //timerLabel.text = "\(totalTime) seconds"
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

        playSound(soundName: "B", repeatNum: 1)

        exerciseTimer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
    }

    @objc private func updateTimer() {
        if secondsPassed < totalTime {
            let progress = Float(secondsPassed) / Float(totalTime)
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

    // Lots of empty space at end of sound files, cannot play them on repeat easily
    // todo issue playing sound on emulator; crashing
    func playSound(soundName: String, repeatNum: Int = 0) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
            print("Could not find sound resource \(soundName)")
            // todo handle file not found here
            return
        }
        
        player = try! AVAudioPlayer(contentsOf: url)
        player.numberOfLoops = repeatNum
        player.play()
    }
}
