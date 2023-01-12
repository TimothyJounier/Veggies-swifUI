//
//  GridView.swift
//  MyVeggies
//
//  Created by Timothy jounier on 12/01/2023.
//

import SwiftUI

struct GridView: View {
    var articles: [Article]
    let column: GridItem = GridItem(.adaptive(minimum: 150,maximum: 400))
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [column]) {
                ForEach(articles) { article in
                    GridItemView(article: article)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(articles: datas())
    }
}
