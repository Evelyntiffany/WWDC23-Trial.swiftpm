//
//  Josh3.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Josh3: View {
    var body: some View {
        ZStack {
            Image("josh3")
                .resizable()
                .scaledToFill()
            Button(action: {}){
                VStack {
                    NavigationLink(destination: Josh4()){
                        
                            Text("Next").padding(.vertical,15).padding(.horizontal,95).font(.system(size: 30))
                                .padding().foregroundColor(.black)
                                .cornerRadius(50).background(Color("ButtonColor"))
                                .cornerRadius(50)
                                .padding(.top,800)
                                .padding(.leading,855)
                    }
                }
            }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
        }.ignoresSafeArea()
        
//        }
    .navigationViewStyle(.stack)
    .navigationBarHidden(true)
    .navigationTitle("")
    }
}


struct Josh3_Previews: PreviewProvider {
    static var previews: some View {
        Josh3().previewInterfaceOrientation(.landscapeRight)
    }
}
