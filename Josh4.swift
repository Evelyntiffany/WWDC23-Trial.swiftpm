//
//  Josh4.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Josh4: View {
    @EnvironmentObject var dataDiri:DataDiri
    var body: some View {
        
       
        
        ZStack {
            Image("joshsad")
                .resizable()
                .scaledToFill()
            
            Text("\"I'm sorry I bumped into you, \(dataDiri.nama). Are you okay?\"")
//            Text("hello")
                .frame(width: 1100, alignment: .leading)
//                .background(.red)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:700, y:760)
            
            
        
                Button(action: {}){
                    NavigationLink(destination: Josh6()){
                        
                        Text("No worries, I am fine.")
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
                    NavigationLink(destination: Josh5()){
                        
                        Text("What is wrong with you?")
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

struct Josh4_Previews: PreviewProvider {
    static var previews: some View {
        Josh4().previewInterfaceOrientation(.landscapeRight)
    }
}
