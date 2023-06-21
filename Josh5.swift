//
//  Josh5.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Josh5: View {
    @EnvironmentObject var dataDiri:DataDiri
    
    var body: some View {
        ZStack {
            Image("joshsad")
                .resizable()
                .scaledToFill()
            
            Text("Hmm, let's try to treat your friend better.")
                .frame(width: 800, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:575, y:760)
            
            Button(action: {}){
                VStack {
                    NavigationLink(destination: Josh4()){
                        
                            Text("Try Again").padding(.vertical,15).padding(.horizontal,95).font(.system(size: 30))
                                .padding().foregroundColor(.black)
                                .cornerRadius(50).background(Color("ButtonColor"))
                                .cornerRadius(50)
                                .padding(.top,800)
                                .padding(.leading,855)
                    }
                }
            }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
        }.ignoresSafeArea()
        
//        }
    .navigationViewStyle(.stack)
    .navigationBarHidden(true)
    .navigationTitle("")
    }
}

struct Josh5_Previews: PreviewProvider {
    static var previews: some View {
        Josh5().previewInterfaceOrientation(.landscapeRight)
    }
}
