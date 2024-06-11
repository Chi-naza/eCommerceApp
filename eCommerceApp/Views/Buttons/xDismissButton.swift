//
//  xDismissButton.swift
//  eCommerceApp
//
//  Created by Chinaza Ugwuoke on 6/7/24.
//

import SwiftUI

struct xDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width:30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    xDismissButton()
}
