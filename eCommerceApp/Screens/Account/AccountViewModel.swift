//
//  AccountViewModel.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/8/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var user = UserModel()
    
    @Published var alertItem: AlertItem?
    
    @AppStorage("user") private var userData: Data?
    
    
    
    func saveChanges(){
        guard invalidForm else{ return }
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.successInSavingForm
        } catch{
            alertItem = AlertContext.errorInSavingForm
        }
        
    }
    
    
    func retrieveUserData(){
        guard let gottenData = userData else { return }
        
        do{
            user = try JSONDecoder().decode(UserModel.self, from: gottenData)
        }catch{
            alertItem = AlertContext.errorInRetrievingData
        }
    }
    
    var invalidForm: Bool {
        guard !user.firstName.isEmpty || !user.lastName.isEmpty || !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
   
    
}
