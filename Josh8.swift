//
//  Josh8.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 19/04/23.
//

import SwiftUI

struct Josh8: View {
    var body: some View {
        ZStack {
            Image("joshsad")
                .resizable()
                .scaledToFill()
            
            Text(" \"Uh-oh. I dropped the candies.\" ")
                .frame(width: 1000, alignment: .leading)
                .background(.white)
                .font(.custom("Arial Rounded MT Bold", fixedSize: 40))
                .foregroundColor(Color("ShadowColor"))
                .position(x:675, y:760)
            
            Button(action: {}){
                VStack {
                    NavigationLink(destination: CandyTap()){
                        
                            Text("Help Josh pick up the candies").padding(.vertical,15).padding(.horizontal,130).font(.system(size: 30))
                                .padding().foregroundColor(.black)
                                .cornerRadius(50).background(Color("ButtonColor"))
                                .cornerRadius(50)
                                .padding(.top,800)
                                .padding(.leading,500)
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

struct Josh8_Previews: PreviewProvider {
    static var previews: some View {
        Josh8().previewInterfaceOrientation(.landscapeRight)
    }
}
