//
//  ContentView.swift
//  MyVeggies
//
//  Created by Timothy jounier on 12/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State var categorySelected = 0
    var body: some View {
        NavigationView {
            VStack {
                GridView(articles: setCategory())
                BottomView(selected: $categorySelected)
            }
            .navigationTitle("My Veggies")
        }
    }
    
    func setCategory() -> [Article]{
        switch categorySelected {
        case 1: return datas().filter({$0.type == .fruit})
        case 2: return datas().filter({$0.type == .legume})
        case 3: return datas().filter({$0.type == .condiment})
        default: return datas()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
