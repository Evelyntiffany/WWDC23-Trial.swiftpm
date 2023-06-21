//
//  Jeremy3.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy3: View {
    var body: some View {
//        NavigationView {
            ZStack {
                
                Image("jeremytalk")
                    .resizable()
                    .scaledToFill()
                
                Text(" \"I am good too. Thank you for asking\" ")
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:525, y:760)
                
                
                Button(action: {}){
                        NavigationLink(destination: Jeremy4()){
                            
                                Text("Next").padding(.vertical,15).padding(.horizontal,95).font(.system(size: 30))
                                    .padding().foregroundColor(.black)
                                    .cornerRadius(50).background(Color("ButtonColor"))
                                    .cornerRadius(50)
                            
                        }
                    
                }.frame(width: 800)
                    .position(x:1125, y:925)
                .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
            }.ignoresSafeArea()
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
            }
}

struct Jeremy3_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy3().previewInterfaceOrientation(.landscapeRight)
    }
}
