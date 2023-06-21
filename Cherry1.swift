//
//  Cherry1.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry1: View {
    var body: some View {
        ZStack {
                Image("cherry1")
                    .resizable()
                    .scaledToFill()
                Button(action: {}){
                    NavigationLink(destination: Cherry2()){
                        
                        Text("Next").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
                            .padding().foregroundColor(.black)
                            .cornerRadius(50).background(Color("ButtonColor"))
                            .cornerRadius(50)
                        
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .frame(width: 800)
                    .position(x:1100, y:925)
            }.ignoresSafeArea()
            
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Cherry1_Previews: PreviewProvider {
    static var previews: some View {
        Cherry1().previewInterfaceOrientation(.landscapeRight)
    }
}
