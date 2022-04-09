//
//  ContentView.swift
//  BullseyeNOlesiak
//
//  Created by Norbert Olesiak-Zbieg on 09/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                InstructionText(text: "🎯🎯🎯\nNorbert wyceluj jak najbliżej tej wartości")
                    .padding()
                BigNumberText(text: String(game.target))
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: $sliderValue , in: 1.0...100.0)
                    Text("100")
                        .bold()
                        
                }
                .padding(20.0)
                Button(action: {
                    print("Hit me pressed")
                    self.alertIsVisible = true
                }) {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                        
                }
                .padding(20.0)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .cornerRadius(20.0)
                .foregroundColor(Color.white)
                
                .alert("Hello there", isPresented: self.$alertIsVisible){
                    Button("Awsome") {}
                } message: {
                    let roundedValue: Int = Int(sliderValue.rounded())
                    Text("The slider value is \(roundedValue).\n" +
                         "You scored \(game.points(sliderValue: roundedValue)) points this round")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.dark).previewLayout(.fixed(width: 568, height: 320))
    }
}
