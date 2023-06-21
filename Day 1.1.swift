//
//  Day 1.1.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 11/04/23.
//
//edgeignorespace atau frame
import SwiftUI

struct Day_1_1: View {
    @EnvironmentObject var dataDiri:DataDiri
    var body: some View {
//        NavigationView {
            ZStack {
                Image("onboarding2").resizable().scaledToFill()
                HStack{
                    
                    TextField("Enter your name", text: $dataDiri.nama)
                        .padding(.vertical,10).padding(.horizontal,10).font(.system(size: 30))
                        .padding().foregroundColor(.black)
                        .cornerRadius(50).background(Color("ButtonColor"))
                        .cornerRadius(50)
                        .position(x: 200,y:600)
                    
                    Spacer()
                    
                    Button(action: {}){
                            NavigationLink(destination: Jeremy2()){
                                
                                Text("Next").font(.system(size: 30))
                                    .frame(width:120,height:80)
                                        .foregroundColor(Color("ShadowColor"))
                                        .cornerRadius(50).background(Color("ButtonColor"))
                                        .cornerRadius(50)
                            }
                    }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .padding(.top,180)
                    
                    
                }.frame(width:600)
            }  .ignoresSafeArea()
                .navigationBarHidden(true)
//        }
        .navigationViewStyle(.stack)
    }
    }

struct Day_1_1_Previews: PreviewProvider {
    static var previews: some View {
        Day_1_1()
            .previewInterfaceOrientation(.landscapeRight)
    }
}



