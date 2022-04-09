//
//  BullseyeNOlesiakTests.swift
//  BullseyeNOlesiakTests
//
//  Created by Norbert Olesiak-Zbieg on 09/04/2022.
//
import XCTest
@testable import BullseyeNOlesiak

class BullseyeNOlesiakTests: XCTestCase {

    var game: Game!
    
    override func setUpWithError() throws {
       
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }
    
    func testScorePositive(){
        let guess = game.target + 5
        
        let score = game.points(sliderValue: guess)
        
        XCTAssertEqual(score, 95)
    }
    func testScoreNegative(){
        let guess = game.target - 5
        
        let score = game.points(sliderValue: guess)
        
        XCTAssertEqual(score,95)
    }
    
}
