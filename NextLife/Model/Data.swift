//
//  Data.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/31.
//

import Foundation
import SwiftUI

class Data {
    func load<T:Decodable>(_ fileName:String, as type: T.Type = T.self) -> T {
        let data: Data
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find file")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't data")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't decode")
        }
    }
}
