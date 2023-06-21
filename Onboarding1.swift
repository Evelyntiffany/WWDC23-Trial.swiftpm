import SwiftUI

struct Onboarding1: View {
    
    var body: some View {
        
//        NavigationView {
            ZStack {
                Image("onboarding1")
                    .resizable()
                    .scaledToFill()
                Button(action: {}){
                    VStack {
                        NavigationLink(destination: Day_1_1()){
                            
                                Text("Start being a caring friend").padding(.vertical,15).padding(.horizontal,100).font(.system(size: 30))
                                    .padding().foregroundColor(.black)
                                    .cornerRadius(50).background(Color("ButtonColor"))
                                    .cornerRadius(50)
                                  
                        }
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 15, y:15)
                    .position(x: 675,y:650)
            }.ignoresSafeArea()
            
            
//        }
        .navigationViewStyle(.stack)
        .navigationBarHidden(true)
        .navigationTitle("")
    }
        
        struct Onboarding1_Previews: PreviewProvider {
            static var previews: some View {
                Onboarding1()
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
}

