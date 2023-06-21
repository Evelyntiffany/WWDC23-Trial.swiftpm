//
//  Cherry7.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry7: View {
    
    @EnvironmentObject var dataDiri:DataDiri
    
    var body: some View {
        
        ZStack{
            
            Image("cherry7")
                .resizable()
                .scaledToFill()
            
            Text(" \"Thank you for being a caring friend, \(dataDiri.nama)!\"  ")
                .frame(width: 1000, alignment: .center)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:710, y:775)
            
        }.ignoresSafeArea()
            .navigationTitle("")
            .navigationBarHidden(true)
     
    }
}

struct Cherry7_Previews: PreviewProvider {
    static var previews: some View {
        Cherry7()
    }
}
