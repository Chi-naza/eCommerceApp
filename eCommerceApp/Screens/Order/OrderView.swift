//
//  OrderView.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 5/21/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                VStack{
                    List{
                        
                        ForEach(order.items){ item in
                            AppetizerCardView(appetizer: item)
                        }.onDelete(perform: order.deleteListItems)
                        
                    }.listStyle(.plain)
                    
                    Button(action: {
                        print("Order Made")
                    }, label: {
                       // AppButton(title: "N\(order.totalPrice, specifier: "%.2f") - Place Order Now")
                        // Using another button style with custom modifiers
                        Text("N\(order.totalPrice, specifier: "%.2f") - Place Order Now")
                    })
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 40)
                }
                
                // show empty state
                if order.items.isEmpty {
                    EmptyStateView(image: "empty", message: "You have no items ordered. Order more items and you will find them here")
                }
            }
            .navigationTitle("🥡 Orders")
        }
    }
 
}

#Preview {
    OrderView()
}
