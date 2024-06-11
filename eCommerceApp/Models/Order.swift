//
//  Order.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/10/24.
//

import SwiftUI

// This is an environment object not just a normal model.
// Environment Objects is like view models. But instead of being tied
// to one view, they can be used by multiple views.

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    
    func deleteListItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
