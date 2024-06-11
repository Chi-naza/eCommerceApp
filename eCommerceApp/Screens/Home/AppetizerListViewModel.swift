//
//  AppetizerListViewModel.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/25/24.
//

import Foundation

@MainActor class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    @Published var alertItem: AlertItem?
    
    @Published var isLoading = false
    
    @Published var isShowingDetailView = false
    
    @Published var selectedAppetizer: Appetizer?
    
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers{ result in
//            DispatchQueue.main.async {
//                self.isLoading = false
//                
//                switch result {
//                    
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                    
//                case .failure(let error):
//                    switch error {
//                    case .invalidData:
//                        self.alertItem = AlertContext.invalidData
//                        
//                    case .invalidResponse:
//                        self.alertItem = AlertContext.invalidResponse
//                        
//                    case .invalidURL:
//                        self.alertItem = AlertContext.invalidURL
//                        
//                    case .unableToComplete:
//                        self.alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//        }
//    }
    
    
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do{
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                // checking the type of error, to show specific errors
                if let appError =  error as? APError{
                    switch appError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    }
                }else{
                    alertItem = AlertContext.invalidResponse
                }
                
                isLoading = false
            }
        }
    }
}

