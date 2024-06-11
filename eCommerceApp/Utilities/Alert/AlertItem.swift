//
//  AlertItem.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/26/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}


struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"), 
                                       message: Text("The data received from the server is not valid. Contact support!"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Unable To Complete Request"),
                                       message: Text("Request for data failed to complete. Check your internet"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response came back from the server"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Invalid Url"),
                                       message: Text("Check the url you are using to make this request. System is down"), dismissButton: .default(Text("Ok")))  
    
    // FORM CHECKS
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Check to see if you have filled out all the fields in this form"), dismissButton: .default(Text("Ok"))) 
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Email is not real. Add a real email to continue"), dismissButton: .default(Text("Ok")))
    
    static let successInSavingForm = AlertItem(title: Text("Success"),
                                       message: Text("You have successfully saved your changes"), dismissButton: .default(Text("Ok")))
    
    static let errorInSavingForm = AlertItem(title: Text("Failed to Save"),
                                       message: Text("There is an error in the form. Try again"), dismissButton: .default(Text("Ok")))
    
    static let errorInRetrievingData = AlertItem(title: Text("No Previous Record"),
                                       message: Text("Welcome, you can start your journey here"), dismissButton: .default(Text("Ok")))
}
