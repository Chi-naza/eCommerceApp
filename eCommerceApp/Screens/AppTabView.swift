//
//  ContentView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/21/24.
//

import SwiftUI

struct AppTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            HomeScreenListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Orders", systemImage: "bag.fill")
                }.badge(order.items.count)
        }
    }
    
}

#Preview {
    AppTabView()
}
