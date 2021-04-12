//
//  InsertView.swift
//  NextLife
//
//  Created by Rockteki on 2021/03/30.
//

import SwiftUI

struct InsertView: View {
    
    @Binding var birth: Date
    
    var body: some View {
        NavigationView{
            VStack{
                DatePicker(
                    "Birthday",
                    selection: $birth,
                    displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                Spacer()
                
                NavigationLink(
                    destination: ResultView(birth: $birth),
                    label: {
                        Text("Show Result")
                    }).padding(.bottom, 20.0)
            }
            .navigationBarTitle("NEXT LIFE")
        }
    }
    
}

struct InsertView_Previews: PreviewProvider {
    @State static private var birth = Date()
    static var previews: some View {
        InsertView(birth: self.$birth)
    }
}
