//
//  Jeremy9.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct Jeremy9: View {
    
    @EnvironmentObject var dataDiri:DataDiri
    
    var body: some View {

        ZStack {
                Image("jeremytalkcanteen")
                    .resizable()
                    .scaledToFill()
            
            Text(" \"Well, that is very kind of you, \(dataDiri.nama).\" ")
                .frame(width: 1000, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:675, y:760)
            
            
            
                Button(action: {}){
                    NavigationLink(destination: Josh1()){
                        
                        Text("Start Day 2").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
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

struct Jeremy9_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Jeremy9()
        }
        .navigationViewStyle(.stack)
        .previewInterfaceOrientation(.landscapeRight)
    }
}
