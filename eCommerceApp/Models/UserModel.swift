//
//  UserModel.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/8/24.
//

import Foundation

class UserModel: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var extraFood = false
    var freqRefills = false
}
