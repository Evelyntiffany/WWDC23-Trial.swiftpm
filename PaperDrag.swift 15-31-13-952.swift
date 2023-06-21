//
//  PaperDrag.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 14/04/23.
//

import SwiftUI

struct PaperDrag: View {
    @State private var location: CGPoint = CGPoint(x: 50, y: 50)
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
    }
    
    var body: some View {
        Image("paper1")
            .resizable()
            .foregroundColor(.pink)
//            .frame(width: 300, height: 400)
            .position(location)
            .gesture(
                simpleDrag
            )
        
    }
}


struct PaperDrag_Previews: PreviewProvider {
    static var previews: some View {
        PaperDrag()
    }
}
