//
//  BottomItemView.swift
//  MyVeggies
//
//  Created by Timothy jounier on 12/01/2023.
//

import SwiftUI

struct BottomItemView: View {
    var imageName: String
    var category: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
            Text(category)
                .bold()
                .foregroundColor(.primary)
        }
        .padding()
        .background(Color.yellow)
        .clipShape(Capsule())
    }
}

struct BottomItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomItemView(imageName: "cerise", category: "Fruits").previewLayout(.sizeThatFits)
    }
}
