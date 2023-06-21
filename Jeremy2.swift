//
//  Jeremy2.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy2: View {
    @EnvironmentObject var dataDiri:DataDiri
    var body: some View {
//        NavigationView {
            ZStack {
                Image("jeremytalk")
                    .resizable()
                    .scaledToFill()
//                    .zIndex(1)
//
                Text(" \"Hello \(dataDiri.nama), how are you?\" ")
//                Text("Hello")
                    .frame(width: 1000, alignment: .leading)
                    .background(.white)
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:675, y:760)
                //                    .zIndex(2)
               
                
                
                    Button(action: {}){
                        NavigationLink(destination: Jeremysad1()){
                            
                            Text("I don't want to talk to you. Go away.")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,57)
                                .background(.white)
                                .cornerRadius(50)
                                
                        }
                    }.frame(width: 800)
                    .position(x:1000, y:925)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    
                    Button(action: {}){
                        NavigationLink(destination: Jeremy3()){
                            
                            Text("I am good. Thank you, how about you?")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,40)
                                .background(.white)
                                .cornerRadius(50)
                            
                        }
                    }.frame(width: 800)
                    .position(x:400, y:925)
                    .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
            }.ignoresSafeArea()
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Jeremy2_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy2().previewInterfaceOrientation(.landscapeRight)
    }
}
