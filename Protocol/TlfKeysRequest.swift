//
// This file is autogenerated
//

//
//  TlfKeysRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// TlfKeys
//

public class TlfKeysRequest: Request {

/*!
 getTLFCryptKeys returns TLF crypt keys from all generations and the TLF ID.
 TLF ID should not be cached or stored persistently.
 */
  public func getTLFCryptKeys(query: TLFQuery) throws -> GetTLFCryptKeysRes {
    let args: [String: Any] = ["query": query]
    let response = try self.sendRequest(method: "keybase.1.tlfKeys.getTLFCryptKeys", args: args)
    try checkNull(response: response)
    return GetTLFCryptKeysRes.fromJSON(JSON(response))
  }

/*!
 getPublicCanonicalTLFNameAndID return the canonical name and TLFID for tlfName.
 TLF ID should not be cached or stored persistently.
 */
  public func getPublicCanonicalTLFNameAndID(query: TLFQuery) throws -> CanonicalTLFNameAndIDWithBreaks {
    let args: [String: Any] = ["query": query]
    let response = try self.sendRequest(method: "keybase.1.tlfKeys.getPublicCanonicalTLFNameAndID", args: args)
    try checkNull(response: response)
    return CanonicalTLFNameAndIDWithBreaks.fromJSON(JSON(response))
  }

}