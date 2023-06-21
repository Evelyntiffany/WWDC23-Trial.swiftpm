//
//  Jeremy4.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy4: View {
    var body: some View {
//        NavigationView {
            ZStack {
                Image("jeremytalk")
                    .resizable()
                    .scaledToFill()

                Text(" \"Since it's lunch break, would you walk to the canteen with me?\" ")
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 35))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:690, y:760)
                
                    Button(action: {}){
                        NavigationLink(destination: Jeremysad1()){
                            
                            Text("Nope. Bye, Jeremy.")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,75)
                                .background(.white)
                                .cornerRadius(50)
                        }
                    }.frame(width: 800)
                    .position(x:400, y:925)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    
                    
                    Button(action: {}){
                        NavigationLink(destination: Jeremy5()){
                            
                            Text("Sure, let's go, Jeremy!")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,80)
                                .background(.white)
                                .cornerRadius(50)
                            
                        }
                    }.frame(width: 800)
                        .position(x:950, y:925)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                }.ignoresSafeArea()
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Jeremy4_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy4().previewInterfaceOrientation(.landscapeRight)
    }
}
