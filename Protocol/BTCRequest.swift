//
// This file is autogenerated
//

//
//  BTCRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// BTC
//

public class BTCRequest: Request {

  public func registerBTC(address: String, force: Bool) throws {
    let args: [String: AnyObject] = ["address": address, "force": force]
    try self.sendRequest("keybase.1.BTC.registerBTC", args: args)
  }

}