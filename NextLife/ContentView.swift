//
//  ContentView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/15.
//

import SwiftUI


struct ContentView: View {
    
    @State var birth: Date = Date()
    @State var showIntro: Bool = false
    @State var indexNum: Int = 0
    
    var body: some View {
        if !showIntro { IntroView(showIntro: $showIntro) }
        else { InsertView(birth: $birth) }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
