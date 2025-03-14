//
//  UT_HMS.swift
//  
//
//  Created by Davide Biancardi on 09/11/22.
//

import XCTest
@testable import SunKit

final class UT_HMS: XCTestCase {
    
    /// Test of hMS2Decimal
    /// For 10h 25m 11s  his decimal number should be 10.419722
    func testOfhMS2Decimal() throws {
        
        //Step1: Creating a HMS instance of 10h 25m 11s
        let hmsUnderTest: HMS = .init(hours: 10, minutes: 25, seconds: 11)
        let expectedOutput: Double = 10.419722
        
        //Step2: Call function under test and check that it returns a value close to expected output
        XCTAssertTrue(abs(hmsUnderTest.hMS2Decimal() - expectedOutput) < 0.01)
    }

    /// Test of HMSDecimalInit
    func testOfHMSDecimalInit() throws {
        
        
    //Test1: For 10.419722 decimal  his HMS should be 10h 25m 11s
        
        //Step1: Creating a HMS instance of 10.419722 decimal number
        var hmsUnderTest: HMS = .init(decimal: 10.419722)
        
        //Step2: Call function under test and check that it returns a value close to expected output
        XCTAssertTrue((hmsUnderTest.hours == 10) && (hmsUnderTest.minutes == 25) && (10.9...11.1).contains(hmsUnderTest.seconds))
        
    //Test2: For decimal equals 20.352 the DMS value should be equals to 20h 21m 7.2s
        
        //Step3:   Creating a HMS instance of 10.419722 decimal number
        hmsUnderTest = .init(decimal: 20.352)
        
        //Step4: Call function under test and check that it returns a value close to expected output
        XCTAssertTrue((hmsUnderTest.hours == 20) && (hmsUnderTest.minutes == 21) && (7.1...7.3).contains(hmsUnderTest.seconds))
    }
}
