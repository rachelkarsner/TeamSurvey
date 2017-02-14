//
//  TeamDetailVC.swift
//  teamSurvey
//
//  Created by Rachel  on 2/2/17.
//  Copyright © 2017 Rachel . All rights reserved.
//

import UIKit

class TeamDetailVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamNumber: UILabel!
    @IBOutlet weak var teamRating: UIImageView!
    @IBOutlet weak var teamAuto: UILabel!
    @IBOutlet weak var teamPositon: UILabel!
    @IBOutlet weak var teamPassedBreakLine: UILabel!
    @IBOutlet weak var teamHighGoals: UILabel!
    @IBOutlet weak var teamPlacedGears: UILabel!
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedTeam != nil{
            teamLogo.image = selectedTeam!.image
            teamName.text = selectedTeam!.name
            teamNumber.text = "Team\(selectedTeam!.number)"
            teamAuto.text = "Autonomous = \(selectedTeam!.hasAuto)"
            teamPositon.text = "Position from Boiler: \(selectedTeam!.position)"
            teamPassedBreakLine.text = "Passed Break Line: \(selectedTeam!.passedBreakLine)"
            teamHighGoals.text = "High Goals: \(selectedTeam!.highGoals)"
            teamPlacedGears.text = "Placed Gears: \(selectedTeam!.placedGears)"
            
            
            
            if selectedTeam!.rating == "1Stars" {
                teamRating.image = UIImage(named: "1Stars")
            } else if selectedTeam!.rating == "2Stars" {
                teamRating.image = UIImage(named: "2Stars")
            } else if selectedTeam!.rating == "3Stars" {
                teamRating.image = UIImage(named: "3Stars")
            } else if selectedTeam!.rating == "4Stars" {
                teamRating.image = UIImage(named: "4Stars")
            }
        }
    }
    
    @IBAction func chooseImage(_ sender : Any) {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            present(imagePicker, animated: true, completion: nil)
        
        }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            teamLogo.image = chosenImage
            selectedTeam?.image = chosenImage
        }
        dismiss(animated: true, completion: nil)
    
    }

   
    @IBAction func star5Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "5Stars")
        selectedTeam!.rating = "5Stars"
    }
    
    @IBAction func star4Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "4Stars")
        selectedTeam!.rating = "4Stars"
    }
    
    @IBAction func star3Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "3Stars")
        selectedTeam!.rating = "3Stars"
    }
    
    
    @IBAction func star2Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "2Stars")
        selectedTeam!.rating = "2Stars"
    }
    
    @IBAction func star1Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "1Stars")
        selectedTeam!.rating = "1Stars"
    }
    
}
