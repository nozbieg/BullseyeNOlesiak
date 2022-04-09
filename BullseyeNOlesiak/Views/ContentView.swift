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
        VStack {
            Text("Norbert wyceluj jak najbliżej tej wartości")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .padding()
                .lineSpacing(4.0)
                .font(.footnote)
                
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue , in: 1.0...100.0)
                Text("100")
                    .bold()
                    
            }
            Button(action: {
                print("Hit me pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
