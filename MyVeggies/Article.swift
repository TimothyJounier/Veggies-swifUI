//
//  Article.swift
//  MyVeggies
//
//  Created by Timothy jounier on 12/01/2023.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var name : String
    var type: CategoryType
}
