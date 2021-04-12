//
//  ResultView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/22.
//

import SwiftUI
import MapKit

struct ResultView: View {
    
    
    @Binding var birth: Date
    @State var image = "kr"
    
    
    var body: some View {
        
        let indexNum = Int(birth.timeIntervalSince1970) / 86400 % 264
        
        ZStack{
            VStack(alignment: .leading){
                MapView()
                    .ignoresSafeArea()
                    .frame(height: 200)
                HStack(alignment: .top){
                    FlagImage(image: $image)
                        .onAppear(perform: {
                            image = nations[indexNum].image
                        })
                    VStack(alignment: .leading) {
                        Text(nations[indexNum].korName)
                            .font(.title3)
                        Text(nations[indexNum].engName)
                            .font(.caption)
                    }.padding()
                    Spacer()
                }.padding()
                
                Divider()
                
                ScrollView{
                    Text(nations[indexNum].description)
                        .padding()
                        .lineSpacing(15.0)
                }
            
                Spacer()
            }
        }
    }
}



struct ResultView_Previews: PreviewProvider {
    @State static private var initBirth = Date()
    static var previews: some View {
        ResultView(birth: self.$initBirth)
    }
}
