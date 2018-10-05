//
//  ReceiptLotteryTests.swift
//  ReceiptLotteryTests
//
//  Created by 郭景豪 on 2018/10/5.
//  Copyright © 2018 Tank. All rights reserved.
//

import XCTest
@testable import ReceiptLottery

class ReceiptLotteryTests: XCTestCase {

    var vc: ViewController!

    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testErrorEnterNoNumberStringForCheckIsEightNumber(){
        
        let enterString = "aaaaaaaa"
        
        if vc.checkIsEightNumber(text: enterString) {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    func testErrorEnterLowEightNumberStringForCheckIsEightNumber(){
        
        let enterString = "1234567"
        
        if vc.checkIsEightNumber(text: enterString) {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    func testErrorEnterUpEightNumberStringForCheckIsEightNumber(){
        
        let enterString = "123456789"
        
        if vc.checkIsEightNumber(text: enterString) {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    func testEnterEightNumberStringForCheckIsEightNumber(){
        
        let enterString = "02345678"
        
        if vc.checkIsEightNumber(text: enterString) {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    
    func testFirstOKReceiptLottery(){
        
        let enterString = "73372972"
        if vc.receiptLottery(text: enterString) == .first {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testFirstFailReceiptLottery(){
        
        let enterString = "73372971"
        if vc.receiptLottery(text: enterString) == .first {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    func testSecondOKReceiptLottery(){
        
        let enterString = "22315462"
        if vc.receiptLottery(text: enterString) == .second {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testSecondFailReceiptLottery(){
        
        let enterString = "22315460"
        if vc.receiptLottery(text: enterString) == .second {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
  
    func testThreeOKReceiptLottery(){
        
        let enterString = "91903003"
        if vc.receiptLottery(text: enterString) == .three {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testThreeFailReceiptLottery(){
        
        let enterString = "91903000"
        if vc.receiptLottery(text: enterString) == .three {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
    func testFourOKReceiptLottery(){
        
        let enterString = "96228722"
        if vc.receiptLottery(text: enterString) == .four {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testFourFailReceiptLottery(){
        
        let enterString = "96228721"
        if vc.receiptLottery(text: enterString) == .four {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    func testFiveOKReceiptLottery(){
        
        let enterString = "99228722"
        if vc.receiptLottery(text: enterString) == .five {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testFiveFailReceiptLottery(){
        
        let enterString = "99228721"
        if vc.receiptLottery(text: enterString) == .five {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
    func testSixOKReceiptLottery(){
        
        let enterString = "99928722"
        if vc.receiptLottery(text: enterString) == .six {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testSixFailReceiptLottery(){
        
        let enterString = "99928721"
        if vc.receiptLottery(text: enterString) == .six {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
    func testSevenOKReceiptLottery(){
        
        let enterString = "99998722"
        if vc.receiptLottery(text: enterString) == .seven {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testSevenFailReceiptLottery(){
        
        let enterString = "99998721"
        if vc.receiptLottery(text: enterString) == .seven {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
    func testEightOKReceiptLottery(){
        
        let enterString = "99999722"
        if vc.receiptLottery(text: enterString) == .eight {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testEightFailReceiptLottery(){
        
        let enterString = "99999721"
        if vc.receiptLottery(text: enterString) == .eight {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
    func testEight2OKReceiptLottery(){
        
        let enterString = "99999983"
        if vc.receiptLottery(text: enterString) == .eight {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
    }
    
    func testEight2FailReceiptLottery(){
        
        let enterString = "99999981"
        if vc.receiptLottery(text: enterString) == .eight {
            XCTAssert(false)
        }else{
            XCTAssert(true)
        }
    }
    
    
}
