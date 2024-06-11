//
//  AppetizerDetailView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/27/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    
    @Binding var isShowingDetail: Bool
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 340, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 30){
                    NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                    
                    NutritionInfo(title: "Proteins", value: "\(appetizer.protein) g")
                    
                    NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
                }
            }
            
            Spacer()
            
            Button(action: {
                order.add(appetizer)
                isShowingDetail = false
            }, label: {
               AppButton(title: "N\(appetizer.price, specifier: "%.2f") - Add to Order ")
            }).padding()
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button(action: {
                isShowingDetail = false
            }, label: {
               xDismissButton()
            })
         ,alignment: .topTrailing)
        
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
