//
//  ProductItem.swift
//  SwiftUI_Course
//
//  Created by Артур Дохно on 02.02.2022.
//

import SwiftUI

struct ProductItem : View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 170, height: 170)
        }.padding(.leading, 15)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[1])
    }
}
