//
//  FlagImage.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/23.
//

import SwiftUI

struct FlagImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .shadow(radius: 7)
    }
}

struct FlagImage_Previews: PreviewProvider {
    
    static var previews: some View {
        FlagImage(image: Image("jp"))
    }
}
