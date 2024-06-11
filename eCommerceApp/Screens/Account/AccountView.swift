//
//  AccountView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/21/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var vm = AccountViewModel()
    
    @FocusState private var focusedTextField: FormTextField?
    
    
    enum FormTextField {
      case  firstName, lastName, email
    }
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Data Now")){
                    
                    TextField("First Name", text: $vm.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $vm.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $vm.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $vm.user.birthDay,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    
                    Button(action: {
                        vm.saveChanges()
                    }, label: {
                        Text("Save Changes")
                    })
                }
                
                // section2
                Section(header: Text("Executable Actions")){
                    Toggle("More Foods", isOn: $vm.user.extraFood)
                    Toggle("Frequent Refills", isOn: $vm.user.freqRefills)
                }.toggleStyle(SwitchToggleStyle(tint: Color.brandPrimary))
            }
                .navigationTitle("👤 Account")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard){
                        Button(action: {focusedTextField = nil}, label: {Text("Dismiss")})
                    }
                }
        }
        .onAppear{
            vm.retrieveUserData()
        }
        .alert(item: $vm.alertItem){al in
            Alert(title: al.title, message: al.message, dismissButton: al.dismissButton)
            
        }
        
    }
}

#Preview {
    AccountView()
}
