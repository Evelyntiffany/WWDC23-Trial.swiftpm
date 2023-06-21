//
//  Cherry2.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry2: View {
    var body: some View {
        ZStack {
                Image("cherrysad")
                    .resizable()
                    .scaledToFill()
            
            Text(" \"Cherry looks alone and sad.\" ")
                .frame(width: 1000, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:675, y:760)
            
                Button(action: {}){
                    NavigationLink(destination: Cherry3()){
                        
                        Text("Approach Cherry").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
                            .padding().foregroundColor(.black)
                            .cornerRadius(50).background(Color("ButtonColor"))
                            .cornerRadius(50)
                        
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .frame(width: 800)
                    .position(x:950, y:925)
            }.ignoresSafeArea()
            
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Cherry2_Previews: PreviewProvider {
    static var previews: some View {
        Cherry2()
    }
}
