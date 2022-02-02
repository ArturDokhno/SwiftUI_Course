//
//  UserResponse.swift
//  SwiftUI_Course
//
//  Created by Артур Дохно on 02.02.2022.
//

import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}
