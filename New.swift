//
//  New.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 14/04/23.
//

import SwiftUI

struct New: View{
    var body: some View {
//        NavigationView(){
        ZStack{
        Text("Drag the papers to find Cherry's key.")
            .font(.custom("Arial Rounded MT Bold", fixedSize: 35))
            .position(x:775, y:150)
            .zIndex(99)
        
            ZStack {
                Image("hallway")
                    .resizable()
                    .scaledToFill()
                
                PaperDrag()
                    .frame(width: 400,height: 465)
                    .position(x: 250, y: 335)
                    .rotationEffect(.degrees(-30))
                    .zIndex(1)
                PaperDrag()
                    .frame(width: 400,height: 465)
                    .position(x: 400, y: 500)
                    .rotationEffect(.degrees(25))
                    .zIndex(2)
                PaperDrag()
                    .position(x: 300, y: 190)
                    .frame(width: 450,height: 480)
                    .rotationEffect(.degrees(45))
                    .zIndex(3)
                PaperDrag()
                    .position(x: 500, y: 190)
                    .frame(width: 325,height: 425)
                    .rotationEffect(.degrees(75))
                    .zIndex(4)
                PaperDrag()
                    .position(x: 0, y: 500)
                    .frame(width: 350,height: 425)
                    .rotationEffect(.degrees(-35))
                    .zIndex(5)
                PaperDrag()
                    .position(x: -200, y: 700)
                    .frame(width: 350,height: 425)
                    .rotationEffect(.degrees(-10))
                    .zIndex(6)
                PaperDrag()
                    .position(x: 700, y: 900)
                    .frame(width: 350,height: 425)
                    .rotationEffect(.degrees(-35))
                    .zIndex(7)
                PaperDrag()
                    .position(x: 1000, y: 400)
                    .frame(width: 350,height: 425)
                    .rotationEffect(.degrees(-35))
                    .zIndex(8)
                NavigationLink(destination: Cherry6()) {
                    Image("key")
                        .resizable()
                        .frame(width: 150, height: 80)
                        .zIndex(10)
                }.position(x: 300, y:190)
            }
            }.ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationTitle("")
//        }
        .navigationViewStyle(.stack)
    }
}
struct New_Previews: PreviewProvider {
    static var previews: some View {
        New() .previewInterfaceOrientation(.landscapeLeft)
    }
}
