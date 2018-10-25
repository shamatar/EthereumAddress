//
//  EthereumAddressTests.swift
//  EthereumAddressTests
//
//  Created by Alex Vlasov on 25/10/2018.
//  Copyright © 2018 Alex Vlasov. All rights reserved.
//

import XCTest
@testable import EthereumAddress

class EthereumAddressTests: XCTestCase {

    func testChecksumAddress() {
        let input = "0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359"
        let output = EthereumAddress.toChecksumAddress(input);
        XCTAssert(output == "0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359", "Failed to checksum address")
    }
    
    func testChecksumAddressParsing() {
        let input = "0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359"
        let addr = EthereumAddress(input);
        XCTAssert(addr != nil);
        let invalidInput = "0xfb6916095ca1df60bB79Ce92cE3Ea74c37c5d359"
        let invalidAddr = EthereumAddress(invalidInput);
        XCTAssert(invalidAddr == nil);
    }

}
