//
//  AddTeamVC.swift
//  teamSurvey
//
//  Created by Rachel  on 2/6/17.
//  Copyright © 2017 Rachel . All rights reserved.
//

import UIKit

class AddTeamVC: UIViewController {
   
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamNumberTextField: UITextField!
    
    @IBAction func nextButtonPressed(_ sender: UIBarButtonItem) {
        if let newName = teamNameTextField.text,
            let numberString = teamNumberTextField.text,
            let newNumber = Int(numberString) {
        
        newTeam = Team(name: newName, number: newNumber)
            print("Created Team /(newNumber) - \(newName)")
            performSegue(withIdentifier: "GoToAutonomousVC", sender: nil)
        
        
        }
    }
}
