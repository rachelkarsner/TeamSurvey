//
//  ManualVC.swift
//  teamSurvey
//
//  Created by Rachel  on 2/6/17.
//  Copyright © 2017 Rachel . All rights reserved.
//

import UIKit

class ManualVC: UIViewController {
    @IBOutlet weak var highGoalsLabel: UILabel!
    @IBOutlet weak var placedGearsLabel: UILabel!
    @IBOutlet weak var highGoalStepper: UIStepper!
    @IBOutlet weak var placedGearsStepper: UIStepper!
    
    @IBAction func highGoalsChanged(_ sender: Any) {
        highGoalsLabel.text = "\(Int(highGoalStepper.value))"
    }
    @IBAction func placedGearsChanged(_ sender: Any) {
        placedGearsLabel.text = "\(Int(placedGearsStepper.value))"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newTeam?.highGoals = Int(highGoalStepper.value)
        newTeam?.placedGears = Int(placedGearsStepper.value)
        
        if let t = newTeam {
            teams.append(t)
        }
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
