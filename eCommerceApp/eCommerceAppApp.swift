//
//  eCommerceAppApp.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/21/24.
//

import SwiftUI

@main
struct eCommerceAppApp: App {
    var orderObj = Order()
    
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(orderObj)
        }
    }
}
