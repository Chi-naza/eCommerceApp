//
//  HomeScreenListView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/21/24.
//

import SwiftUI

struct HomeScreenListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
   
    
    var body: some View {
        ZStack {
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    // the card view
                    AppetizerCardView(appetizer: appetizer)
                        //.listRowSeparator(.hidden) // hides list separator lines
                        //.listRowSeparatorTint(.brandPrimary) // separator line color
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetailView = true
                        }
                       
                }
                .navigationTitle("🥡 Home")
                .disabled(viewModel.isShowingDetailView)
//                .onAppear {
//                    // function fetching food data
//                    viewModel.getAppetizers()
//                }
                .task {
                    // function fetching food data
                    viewModel.getAppetizers()
                }
                .blur(radius: viewModel.isShowingDetailView ? 10 : 0)
            }
            
            if viewModel.isShowingDetailView {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetailView)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}
#Preview {
    HomeScreenListView()
}
