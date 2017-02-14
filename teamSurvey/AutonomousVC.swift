//
//  AutonomousVC.swift
//  teamSurvey
//
//  Created by Rachel  on 2/6/17.
//  Copyright © 2017 Rachel . All rights reserved.
//

import UIKit

class AutonomousVC: UIViewController {
    @IBOutlet weak var hasAutonomousSegmentControl: UISegmentedControl!

    @IBOutlet weak var positionSegmentControl: UISegmentedControl!

    @IBOutlet weak var passedBreakLineSegmentControl: UISegmentedControl!
    
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
         if hasAutonomousSegmentControl.selectedSegmentIndex == 0 {
            newTeam?.hasAuto = true
        } else {
            newTeam?.hasAuto = false
        }
        
        
        if positionSegmentControl.selectedSegmentIndex == 0{
            newTeam?.position = 1
        } else if positionSegmentControl.selectedSegmentIndex == 1{
            newTeam?.position = 2
        } else {
            newTeam?.position = 3
        }
        
        if passedBreakLineSegmentControl.selectedSegmentIndex == 0{
            newTeam?.passedBreakLine = true
        } else {
                newTeam?.passedBreakLine = false
        }
        performSegue(withIdentifier: "GoToManualVC", sender: nil)
        
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
