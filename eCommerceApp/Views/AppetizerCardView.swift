//
//  AppetizerCardView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/25/24.
//

import SwiftUI

struct AppetizerCardView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
            
//            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
//                image
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 120, height: 90)
//                    .cornerRadius(8)
//            } placeholder: {
//                Image("food-placeholder")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 120, height: 90)
//                    .cornerRadius(8)
//            }
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8.0)

            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerCardView(appetizer: MockData.sampleAppetizer)
}