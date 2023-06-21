//
//  KoJayaWipe.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 17/04/23.
//

import SwiftUI

struct WipeGame: View {
    @State var points: [CGPoint] = []
    @State var timeRemaining = 12
       let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        ZStack {
            Image("canteen")
                .resizable()
                .scaledToFill()
                .foregroundColor(.accentColor)
            
            Text("Wipe the stain clean until the \"Next\" button shows up.")
                .font(.custom("Arial Rounded MT Bold", fixedSize: 35))
                .position(x:775, y:150)
                .zIndex(99)
            
            
            
            Button(action: {}){
                NavigationLink(destination: Jeremy9()){
                    
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .bold()
                        .frame(width: 300, height:80)
                        .background(Color("ButtonColor"))
                        .cornerRadius(50)
//                        .position(x:600,y:500)
                        .onReceive(timer) { _ in
                                        if timeRemaining > 0 {
                                            timeRemaining -= 1
                                        }
                                    }
                        
                }
            }.frame(width: 800)
            .position(x:1200, y:925)
            .shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
            .zIndex(1000)
            .opacity(timeRemaining > 0 ? 0 : 1)
                
                //                        .rotationEffect(.degrees(20))
                //                    .zIndex(1000)
                
            
            ZStack {
                
                //                    NavigationLink(destination: Jeremy9()) {
                Image("wipe")
                    .resizable()
                //                            .frame(width: 1450, height: 900)
                
                //                    }
                DrawShape(points: points)
                    .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                    .foregroundColor(.black)
                    .blendMode(.destinationOut)
            }
                .compositingGroup()
                .zIndex(9)
            
        }.ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationTitle("")
            .gesture(DragGesture().onChanged( { value in
                self.addNewPoint(value)
            })
                .onEnded({value in}))
        
        
        
    }
    
    private func addNewPoint(_ value: DragGesture.Value) {points.append(value.location)
    }
    
    
}

struct WipeGame_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WipeGame()
        }.navigationViewStyle(.stack)
            .previewInterfaceOrientation(.landscapeRight)
        
    }
}
struct DrawShape: Shape {
    var points: [CGPoint]
    func path(in rect: CGRect) -> Path {
        var path = Path()
        guard let firstPoint = points.first else { return path }
        
        path.move(to: firstPoint)
        for pointIndex in 1..<points.count {
            path.addLine(to: points[pointIndex])
        }
        return path
    }
}
