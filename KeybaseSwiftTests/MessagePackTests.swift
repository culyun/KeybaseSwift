//
//  MessagePackTests.swift
//  Keybase
//
//  Created by Gabriel on 10/6/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import XCTest
import MPMessagePack

@testable import KeybaseSwift

class MessagePackTests: XCTestCase {

  func testMessagePackRPC() throws {
    let client = MPMessagePackClient()
    let server = MPMessagePackServer()

    server.requestHandler = { (messageId: NSNumber!, method: String!, params: [AnyObject]!, completion: MPRequestCompletion!) -> Void in
      completion(nil, params)
    }

    try server.openWithPort(41113)

    let openExpectation = expectationWithDescription("Open")
    client.openWithHost("localhost", port: 41113) { (error: NSError!) -> Void in
      XCTAssertNil(error)
      openExpectation.fulfill()
    }
    waitForExpectationsWithTimeout(1, handler: nil)


    let requestExpectation = expectationWithDescription("Request")
    let queue: dispatch_queue_t = dispatch_queue_create("testQueue", nil)
    dispatch_async(queue, { _ in
      let result = try! client.sendRequestWithMethod("test", params: [], messageId: 1, timeout:0.5)

      XCTAssertNotNil(result)
      requestExpectation.fulfill()
    })

    waitForExpectationsWithTimeout(1, handler: nil)

    client.close()
    server.close()
  }

}

