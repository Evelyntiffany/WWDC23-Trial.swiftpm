//
//  jeremy7.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 18/04/23.
//

import SwiftUI

struct jeremy7: View {
    var body: some View {
        NavigationView {
            
            ZStack{
                
                Image("jeremy7")
                    .resizable()
                    .scaledToFill()
                
                Button(action: {}){
                    NavigationLink(destination: Jeremy8()){
                        
                        Text("Next").padding(.vertical,15).padding(.horizontal,150).font(.system(size: 30))
                            .padding().foregroundColor(.black)
                            .cornerRadius(50).background(Color("ButtonColor"))
                            .cornerRadius(50)
                        
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .frame(width: 800)
                    .position(x:1100, y:925)
                
            }
               
        }.ignoresSafeArea()
        
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct jeremy7_Previews: PreviewProvider {
    static var previews: some View {
        jeremy7().previewInterfaceOrientation(.landscapeRight)
    }
}
