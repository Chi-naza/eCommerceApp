//
//  AppButton.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/7/24.
//

import SwiftUI

struct AppButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    AppButton(title: "My App Button")
}
