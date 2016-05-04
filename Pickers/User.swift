//
//  User.swift
//  Pickers
//
//  Created by MJ Kim on 5/4/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import Foundation
class User{
    
    static var name: String = ""
    static var password: String = ""
    static var points: Int = 0
    static var activities = [Activity]()

    
    static func addPoints(val: Int) {
        points += val
    }

    static func changeName(Newname: String) {
        name = Newname
    }
    
    static func changePassword(Newpassword: String) {
        password = Newpassword
    }
    
}