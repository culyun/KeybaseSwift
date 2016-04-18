//
//  Request.swift
//  KeybaseSwift
//
//  Created by Gabriel on 10/5/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import Foundation

enum RequestError: ErrorType {
  case InvalidResponse
}

public typealias RequestCompletion = (NSError?, AnyObject?) -> Void

@objc public protocol Client: class {
  func sendRequestWithMethod(method: String, args: [String: AnyObject], messageId: Int, timeout: NSTimeInterval) throws -> AnyObject
}

public class Request: NSObject {

  var client: Client
  var messageId: Int
  var timeout: NSTimeInterval

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

  public func sendRequest(method: String, args: [String: AnyObject]) throws -> AnyObject {
    var sargs: [String: AnyObject] = args
    sargs["sessionID"] = self.messageId
    return try self.client.sendRequestWithMethod(method, args: sargs, messageId: self.messageId, timeout: self.timeout)
  }

  func wrapNull(obj: AnyObject?) -> AnyObject {
    guard obj != nil else { return NSNull() }
    return obj!
  }

  func checkNull(response: AnyObject) throws {
    guard response is NSNull else { throw RequestError.InvalidResponse }
  }
  
}
