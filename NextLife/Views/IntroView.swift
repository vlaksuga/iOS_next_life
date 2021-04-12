//
//  IntroView.swift
//  NextLife
//
//  Created by Rockteki on 2021/04/12.
//

import SwiftUI


struct IntroView: View {
    
    @Binding var showIntro: Bool
    
    var body: some View {
        Color.yellow
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 0.0){
                    Text("My Next Life")
                        .font(.title2)
                        .foregroundColor(.white)
                
                    
                    Button("Start"){
                        showIntro = true
                    }
                }
            )
    }
}

struct IntroView_Previews: PreviewProvider {
    @State private static var intro = false
    static var previews: some View {
        IntroView(showIntro: $intro)
    }
}
