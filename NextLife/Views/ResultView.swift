//
//  ResultView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/22.
//

import SwiftUI
import MapKit

struct ResultView: View {
    
    var nation: Nation
    
    var body: some View {
        
        VStack(alignment: .leading){
            MapView(nation: nation)
                .ignoresSafeArea()
                .frame(height: 200)
            HStack(alignment: .top){
                FlagImage(image: nation.image)
                VStack(alignment: .leading) {
                    Text(nation.korName)
                        .font(.title3)
                    Text(nation.engName)
                        .font(.caption)
                }.padding()
                Spacer()
            }.padding()
            
            Divider()
            
            ScrollView{
                Text(nation.description)
                    .padding()
                    .lineSpacing(15.0)
            }
            
            Spacer()
        }
    }
}



struct ResultView_Previews: PreviewProvider {
    @State static private var nation = nations[0]
    static var previews: some View {
        ResultView(nation: nation)
    }
}
