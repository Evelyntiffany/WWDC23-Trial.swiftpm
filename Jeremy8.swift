//
//  Jeremy8.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI


struct Jeremy8: View {
    @EnvironmentObject var dataDiri:DataDiri
    var body: some View {
//        NavigationView {
            ZStack {
                Image("jeremysad")
                    .resizable()
                    .scaledToFill()
                
                Text(" \"Oh no, \(dataDiri.nama)! You spilled my juice\" ")
                    .frame(width: 1000, alignment: .leading)
                    .background(.white)
                    .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                    .foregroundColor(Color("ShadowColor"))
                    .position(x:675, y:760)
                

            
                    Button(action: {}){
                        NavigationLink(destination: WipeGame()){
                            
                            Text("I am so sorry! Let me clean it up.")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,100)
                                .background(.white)
                                .cornerRadius(50)

                        }
                    }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                        .frame(width: 800)
                        .position(x: 390, y:920)
                    

                    
                    Button(action: {}){
                        NavigationLink(destination: Jeremysad2()){
                            
                            Text("You clean it up, it's your juice.")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                                .bold()
                                .padding(.vertical,30)
                                .padding(.horizontal,100)
                                .background(.white)
                                .cornerRadius(50)

                            
                        }
                    }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                        .frame(width: 800)
                        .position(x: 1000, y:920)

            }.ignoresSafeArea()
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct Jeremy8_Previews: PreviewProvider {
    static var previews: some View {
        Jeremy8().previewInterfaceOrientation(.landscapeRight)
    }
}
