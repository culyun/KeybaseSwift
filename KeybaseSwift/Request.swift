//
//  Request.swift
//  KeybaseSwift
//
//  Created by Gabriel on 10/5/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import Foundation

enum RequestError: Error {
  case InvalidResponse
}

public typealias RequestCompletion = (NSError?, AnyObject?) -> Void

@objc public protocol Client: class {
  func sendRequestWithMethod(method: String, args: [String: Any], messageId: Int, timeout: TimeInterval) throws -> AnyObject
}

public class Request: NSObject {

  var client: Client
  var messageId: Int
  var timeout: TimeInterval

  @objc public init(client: Client) {
    self.client = client
    self.messageId = Request.nextMessageId()
    self.timeout = 0
  }

  static var gMessageId: Int = 1
  class func nextMessageId() -> Int {
    gMessageId += 1
    return gMessageId
  }

  public func sendRequest(method: String, args: [String: Any]) throws -> AnyObject {
    var sargs: [String: Any] = args
    sargs["sessionID"] = self.messageId
    return try self.client.sendRequestWithMethod(method: method, args: sargs, messageId: self.messageId, timeout: self.timeout)
  }

  func wrapNull(_ obj: AnyObject?) -> AnyObject {
    guard obj != nil else { return NSNull() }
    return obj!
  }

  func checkNull(response: AnyObject) throws {
    guard response is NSNull else { throw RequestError.InvalidResponse }
  }
  
}
