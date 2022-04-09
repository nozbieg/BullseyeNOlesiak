//
//  ContentView.swift
//  BullseyeNOlesiak
//
//  Created by Norbert Olesiak-Zbieg on 09/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Wyceluj jak najbliżej tej wartości")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .padding()
                .lineSpacing(4.0)
                .font(.footnote)
                
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
                    
            }
            Button(action: {
                print("Hit me pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            
            .alert("Hello there", isPresented: $alertIsVisible){
                Button("Awsome") {}
            } message: {
                Text("My first popup")
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
