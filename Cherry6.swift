//
//  Cherry6.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry6: View {
    
    @EnvironmentObject var dataDiri:DataDiri

    var body: some View {
        ZStack {
                Image("cherrysmile")
                    .resizable()
                    .scaledToFill()
            
            Text(" \"Thank you so much, \(dataDiri.nama). You made my day\" ")
                .frame(width: 1110, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:715, y:760)
            
                Button(action: {}){
                    NavigationLink(destination: Cherry7()){
                        
                        Text("Finish").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
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

struct Cherry6_Previews: PreviewProvider {
    static var previews: some View {
        Cherry6()
    }
}
