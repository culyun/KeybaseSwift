//
//  Extensions.swift
//  Keybase
//
//  Created by Gabriel on 10/5/15.
//  Copyright © 2015 Gabriel Handford. All rights reserved.
//

import Foundation
import SwiftyJSON

extension String {

  static func fromJSONArray(json: [JSON]) -> [String] {
    return json.map { $0.stringValue }
  }

}

extension JSON {

  //Non-optional [String : String]
  public var dictionaryStringValue: [String : String] {
    var d = [String: String]()
    for (k, v) in self.dictionaryValue {
      d[k] = v.stringValue
    }
    return d
  }
  
}

extension NSData {

  static func fromJSONArray(json: [JSON]) -> [NSData] {
    //return json?.map { $0 as NSData }
    return []
  }

}