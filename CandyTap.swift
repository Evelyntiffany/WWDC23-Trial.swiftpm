//
//  New.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 14/04/23.
//

import SwiftUI

struct CandyTap: View{
    @State var score : Int = 0
    @State var candy1 : CGFloat = 1
    @State var candy2 : CGFloat = 1
    @State var candy3 : CGFloat = 1
    @State var candy4 : CGFloat = 1
    @State var candy5 : CGFloat = 1
    
        var body: some View {
            NavigationView(){
                
                ZStack{
                    
                    Image("field")
                        .resizable()
                        .scaledToFill()
                    
                    Text(String(score))
                        .foregroundColor(.white)
                        .font(.custom("Arial Rounded MT Bold", fixedSize: 50))
                        .position(x:650,y:925)
                    
                    Text("Candies Collected:")
                        .font(.custom("Arial Rounded MT Bold", fixedSize: 50))
                        .foregroundColor(.white)
                        .position(x:400,y:925)
                        .zIndex(99)
                    
                    Image("pencil")
                        .resizable()
                        .frame(width:200,height:100)
                        .position(x:800, y:800)
                        .rotationEffect(.degrees(50))
                    
                    Image("pencil")
                        .resizable()
                        .frame(width:200,height:100)
                        .position(x:900, y:700)
                        .rotationEffect(.degrees(-30))
                    
                    Image("pencil")
                        .resizable()
                        .frame(width:200,height:100)
                        .position(x:800, y:50)
                        .rotationEffect(.degrees(-30))

                    ZStack {
                        Image("candy")
                            .resizable()
                            .frame(width: 200,height: 125)
                            .position(x: 350, y: 435)
                            .rotationEffect(.degrees(-30))
                            .zIndex(1)
                            .opacity(candy1)
                            .onTapGesture {
                                candy1 = 0
                                score += 1
                            }
                        Image("candy")
                            .resizable()
                            .frame(width: 300,height: 225)
                            .position(x: 400, y: 500)
                            .rotationEffect(.degrees(25))
                            .zIndex(2)
                            .opacity(candy2)
                            .onTapGesture {
                                candy2 = 0
                                score += 1
                            }
                        Image("candy")
                            .resizable()
                            .frame(width: 250,height: 175)
                            .position(x: 900, y: 1000)
                            .rotationEffect(.degrees(-55))
                            .zIndex(3)
                            .opacity(candy3)
                            .onTapGesture {
                                candy3 = 0
                                score += 1
                            }
                        Image("candy")
                            .resizable()
                            .frame(width: 255,height: 180)
                            .position(x: 700, y: 80)
                            .rotationEffect(.degrees(55))
                            .zIndex(3)
                            .opacity(candy4)
                            .onTapGesture {
                                candy4 = 0
                                score += 1
                            }
                        Image("candy")
                            .resizable()
                            .frame(width: 300,height: 225)
                            .position(x: 900, y: 500)
                            .rotationEffect(.degrees(-55))
                            .zIndex(3)
                            .opacity(candy5)
                            .onTapGesture {
                                candy5 = 0
                                score += 1
                            }
                        if score == 5 {
                            NavigationLink(destination: Josh9()) {
                                Text("Next").padding(.vertical,15).padding(.horizontal,95).font(.system(size: 30))
                                    .padding().foregroundColor(.black)
                                    .cornerRadius(50).background(Color("ButtonColor"))
                                    .cornerRadius(50)
                            }.position(x:1200, y:920)
                                .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                        }
                        
                    }
                }.ignoresSafeArea()
//        .zIndex(99)
    }.navigationViewStyle(.stack)
        }
        
        struct CandyTap_Previews: PreviewProvider {
            static var previews: some View {
                CandyTap() .previewInterfaceOrientation(.landscapeLeft)
            }
            
        }
    }

