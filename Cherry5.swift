//
//  Cherry5.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Cherry5: View {
    var body: some View {
        ZStack {
            Image("cherrysad")
                .resizable()
                .scaledToFill()
            
            
            Text(" \"I lost the key to my locker, I think it's under this pile of paper.\"  ")
                .frame(width: 1110, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:715, y:760)
            
        
                Button(action: {}){
                    NavigationLink(destination: New()){
                        
                        Text("Let me help you.")
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
                        
                        Text("I guess it's just your bad luck.")
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

struct Cherry5_Previews: PreviewProvider {
    static var previews: some View {
        Cherry5().previewInterfaceOrientation(.landscapeRight)
    }
}
