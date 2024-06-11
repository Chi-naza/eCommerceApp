//
//  CustomModifiers.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/10/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(Color.brandPrimary)
            .controlSize(.large)
    }
}




//2nd Option: if you want it to be a direct extension on any View
extension View {
    func standardButtonStyle() -> some View{
        self.modifier(StandardButtonStyle())
    }
}
