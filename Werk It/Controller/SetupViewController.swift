//
//  SetupViewController.swift
//  Werk It
//
//  Created by Shayla Sawchenko on 2021-08-12.
//

import UIKit

class SetupViewController: UIViewController {

    @IBOutlet weak var sweedishBallSwitch: UISwitch!

    @IBOutlet weak var resistanceBandSwitch: UISwitch!

    @IBOutlet weak var chairSwitch: UISwitch!

    @IBOutlet weak var benchSwitch: UISwitch!

    @IBOutlet weak var weightsSwitch: UISwitch!

    var hasEquipment = Equipment()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func werkItPressed(_ sender: Any) {
        hasEquipment = Equipment(
            sweedishBall: sweedishBallSwitch.isSelected,
            resistanceBands: resistanceBandSwitch.isSelected,
            chair: chairSwitch.isSelected,
            bench: benchSwitch.isSelected,
            weight: weightsSwitch.isSelected,
            hasAll: false)

        self.performSegue(withIdentifier: "goToWorkout", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToWorkout" {
            let destinationVC = segue.destination as! WorkoutViewController
            destinationVC.userHasEquipment = hasEquipment
        }
    }


}
