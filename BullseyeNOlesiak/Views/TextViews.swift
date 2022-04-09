//
//  TextViews.swift
//  BullseyeNOlesiak
//
//  Created by Norbert Olesiak-Zbieg on 09/04/2022.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}



struct BigNumberText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}
struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText(text: "preview")
        BigNumberText(text: String(99))
    }
}
