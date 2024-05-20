//
//  User.swift
//  ToDoList
//
//  Created by Andres Fabian Rangel Marino on 2/11/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
