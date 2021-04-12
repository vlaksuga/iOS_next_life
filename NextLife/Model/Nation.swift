//
//  Model.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/26.
//

import Foundation

struct Nation: Hashable, Codable {
    var id: Int
    var engName: String
    var korName: String
    var description: String
    var image: String
}
