//
//  Jeremy5.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy5: View {
    var body: some View {
//        NavigationView {
            ZStack {
                Image("jeremytalkcanteen")
                    .resizable()
                    .scaledToFill()
                
                Text(" \"My lunch today is a Vietnamese cuisine, would you like some?\" ")
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 35))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:690, y:760)
                
                    Button(action: {}){
                        NavigationLink(destination: Jeremysad2()){
                            
                            Text("No, I think it looks weird.")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,67)
                                .background(.white)
                                .cornerRadius(50)

                        }
                    }.frame(width: 800)
                        .position(x:290, y:920)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)

                    
                    Button(action: {}){
                        NavigationLink(destination: Jeremy6()){
                            
                            Text("Thank you for the offer, but I already have my own lunch ")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,40)
                                .background(.white)
                                .cornerRadius(50)
                                
                        }
                    }.frame(width: 800)
                        .position(x:925, y:925)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                
            }.ignoresSafeArea()
            
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Jeremy5_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy5().previewInterfaceOrientation(.landscapeRight)
    }
}
