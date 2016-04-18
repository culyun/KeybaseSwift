//
//  RequestTests.swift
//  Keybase
//
//  Created by Gabriel on 10/6/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import XCTest

@testable import KeybaseSwift

class RequestTests: XCTestCase, Client {

  func testRequest() throws {
    let request = ConfigRequest(client: self)
    let status = try request.getCurrentStatus()
    print(status)
  }

  func sendRequestWithMethod(method: String, args: [String: AnyObject], messageId: Int, timeout: NSTimeInterval) throws -> AnyObject {

    return "ok"
  }

}
