import SwiftUI
import AVFoundation
var audioPlayer: AVAudioPlayer?
struct ContentView: View {
    func playSound(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
                audioPlayer?.numberOfLoops = -1
            } catch {
                print("ERROR")
            }
        }
    }
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("onboarding")
                    .resizable()
                    .scaledToFill()
                Button(action: {}){
                    VStack {
                        NavigationLink(destination: Onboarding1()){
                            
                                Text("Next")
                                .padding(.vertical,15)
                                .padding(.horizontal,95)
                                .font(.system(size: 30))
                                    .padding().foregroundColor(.black)
                                    .cornerRadius(50).background(Color("ButtonColor"))
                                    .cornerRadius(50)
                                    
                        }
                    }
                }.shadow(color: Color("ShadowColor"), radius: 0, x: 10, y:10)
                    .position(x: 1125,y:910)
                  
            }
            .onAppear{
                playSound(sound: "My Song 2", type: "m4a")
            }
            .ignoresSafeArea()
            
        }
        .navigationViewStyle(.stack)
    }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
}

