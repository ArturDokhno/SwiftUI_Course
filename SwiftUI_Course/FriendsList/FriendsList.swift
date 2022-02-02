//
//  FriendsList.swift
//  SwiftUI_Course
//
//  Created by Артур Дохно on 02.02.2022.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Friends"))
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
