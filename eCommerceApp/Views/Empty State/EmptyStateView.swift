//
//  EmptyStateView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/9/24.
//

import SwiftUI

struct EmptyStateView: View {
    let image: String
    let message: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 230)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -40)
            
        }
    }
}

#Preview {
    EmptyStateView(image: "empty", message: "This is showing that you have no item to display currently. If this is not what should be, let us know")
}
