//
// This file is autogenerated
//

//
//  NotifyTrackingRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// NotifyTracking
//

public class NotifyTrackingRequest: Request {

  public func trackingChanged(uid: String, username: String) throws {
    let args: [String: Any] = ["uid": uid, "username": username]
    _ = try self.sendRequest(method: "keybase.1.NotifyTracking.trackingChanged", args: args)
  }

}
