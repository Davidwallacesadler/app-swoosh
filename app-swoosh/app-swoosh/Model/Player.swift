//
//  Player.swift
//  app-swoosh
//
//  Created by David Sadler on 10/28/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation

//always use a struct when you can - using default swift types. use classes for custom implementations of types. Structs are faster.

//all data in the app should be dealt with in a class or a struct - handled with the model

struct Player {
    var desiredLeague: String!
    var selectedSkillLevel: String!
}
//This model is for handling the data we want to pass between VC's

//NOTES on unwrapping - Implicitly unwrapped optional ( ! ): Use only when you can guarantee variable will have data before it is used. Optional ( ? ): Use when there may/may not be data in the variable at runtime.
