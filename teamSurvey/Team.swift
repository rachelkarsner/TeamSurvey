//
//  Team.swift
//  teamSurvey
//
//  Created by Rachel  on 2/2/17.
//  Copyright © 2017 Rachel . All rights reserved.
//

import Foundation
import UIKit

var teams = [Team] ()
var selectedTeam : Team?
var newTeam : Team?

//Data Model
class Team {
    
    //properties 
    var name : String
    var number : Int
    var hasAuto : Bool
    var position : Int
    var image : UIImage
    var rating : String
    var passedBreakLine : Bool
    var highGoals : Int
    var placedGears : Int
    
    
    
    //initializers
    init(name : String, number : Int, hasAuto : Bool, position : Int, image : UIImage, rating : String, passedBreakLine : Bool, highGoals : Int, placedGears : Int) {
        self.name = name
        self.number = number
        self.hasAuto = hasAuto
        self.position = position
        self.image = image
        self.rating = "1Stars"
        self.passedBreakLine = passedBreakLine
        self.highGoals = highGoals
        self.placedGears = placedGears
        
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
        self.image = UIImage(named: "FIRST-horizontal")!
        self.rating = "1Stars"
        hasAuto = false
        position = 1
        passedBreakLine = false
        highGoals = 0
        placedGears = 0
    }
}
    
    
    
    
    
    
    
    //other methods

