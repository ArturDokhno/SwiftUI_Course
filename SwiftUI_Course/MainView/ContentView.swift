//
//  ContentView.swift
//  SwiftUI_Course
//
//  Created by Артур Дохно on 02.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponse, by: { $0.category.rawValue})
    }
    
    var body: some View {
        NavigationView {
            
            List {
                Cell(user: swiftbook).listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted().identified(by: \.self)) { key in
                    ProductRow(categoryName: key, items: self.categories[key]!)
                    
                    }.listRowInsets(EdgeInsets())
                
                NavigationButton(destination: FriendsList()) {
                    Text("Наши преподаватели")
                }
            }
                .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
