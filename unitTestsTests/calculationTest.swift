//
//  calculationTest.swift
//  unitTestsTests
//
//  Created by duverney muriel on 27/07/23.
//

import XCTest
@testable import unitTests
final class calculationTest: XCTestCase {

    func testSuccessfilTipCalculation(){
        
//        given ( Arrange)
        let enteredAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
//        when( act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
//        then(Assert
        XCTAssertEqual(tip, 25)
        
    }
    
    func testNegativeTipCalculation(){
        
//        given ( Arrange)
        let enteredAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
//        when( act)
        let tip = calculation.calculateTip(of: enteredAmount, with: tipSlider)
        
//        then(Assert
        XCTAssertNil(tip)
        
    }

}
