//
//  Card.swift
//  CollegeRepo
//
//  Created by Smit Patel on 11/08/23.
//

import Foundation

struct Card: Identifiable {
    let id : Int
    var title : String
    var description : String
   
    
}

var testData:[Card] = [
    
    Card(
        id : 1 ,
        title: "Create Account",
        description: "Join Us Today: Create Your Account and Unlock a World of Possibilities!"),


    Card(
        id : 2,
         title: "Login",
         description: "Welcome Back: Seamlessly Access Your Account and Dive Right In!"),





]

