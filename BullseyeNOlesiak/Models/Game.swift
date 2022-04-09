//
//  Game.swift
//  BullseyeNOlesiak
//
//  Created by Norbert Olesiak-Zbieg on 09/04/2022.
//

import Foundation

struct Game {
    
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
      
        let dif = target - sliderValue
        
        return 100-abs(dif)
    }
}
