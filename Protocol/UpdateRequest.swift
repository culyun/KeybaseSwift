//
// This file is autogenerated
//

//
//  UpdateRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Update
//

public class UpdateRequest: Request {

/*!
 Perform the update with options.
 */
  public func update(options: UpdateOptions) throws -> UpdateResult {
    let args: [String: AnyObject] = ["options": options]
    let response = try self.sendRequest("keybase.1.update.update", args: args)
    try checkNull(response)
    return UpdateResult.fromJSON(JSON(response))
  }

/*!
 Perform an update check.
 */
  public func updateCheck(force: Bool) throws {
    let args: [String: AnyObject] = ["force": force]
    try self.sendRequest("keybase.1.update.updateCheck", args: args)
  }

}