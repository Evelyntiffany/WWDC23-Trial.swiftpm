//
//  Cherry3.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry3: View {
    
    @EnvironmentObject var dataDiri:DataDiri
    
    var body: some View {
        ZStack {
            Image("cherrysad")
                .resizable()
                .scaledToFill()
            
            Text(" \"Oh hey, \(dataDiri.nama).\" ")
                .frame(width: 1000, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:675, y:760)
            
        
                Button(action: {}){
                    NavigationLink(destination: Cherry5()){
                        
                        Text("Hi Cherry, are you okay?")
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
                    NavigationLink(destination: Cherry4()){
                        
                        Text("You should smile more.")
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
    }
}

struct Cherry3_Previews: PreviewProvider {
    static var previews: some View {
        Cherry3().previewInterfaceOrientation(.landscapeRight)
    }
}
