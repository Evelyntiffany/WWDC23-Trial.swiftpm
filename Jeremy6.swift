//
//  Jeremy6.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy6: View {
    var body: some View {
//        NavigationView {
            ZStack {
                Image("jeremytalkcanteen")
                    .resizable()
                    .scaledToFill()
                
                Text(" \"Alright then.\" ")
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 35))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:300, y:760)
                
                Button(action: {}){
                    VStack {
                        NavigationLink(destination: jeremy7()){
                            
                                Text("Next").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
                                    .padding().foregroundColor(.black)
                                    .cornerRadius(50).background(Color("ButtonColor"))
                                    .cornerRadius(50)

                        }
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .frame(width: 800)
                    .position(x:1100, y:920)
            }.ignoresSafeArea()
        
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Jeremy6_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy6().previewInterfaceOrientation(.landscapeRight)
    }
}
