//
//  ProductRow.swift
//  SwiftUI_Course
//
//  Created by Артур Дохно on 02.02.2022.
//

import SwiftUI

struct ProductRow : View {
    
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(self.categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items) { item in
                        ProductItem(object: item)
                    }
                }
            }.frame(height: 190)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, items: Array(materialResponse.prefix(3)))
    }
}
