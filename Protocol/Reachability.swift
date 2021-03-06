//
// This file is autogenerated
//

//
//  Reachability.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Reachability
//

public enum Reachable: Int {
	case unknown = 0
	case yes = 1
	case no = 2
}


public class Reachability {

	public let reachable: Reachable?

  public init(reachable: Reachable) {
    self.reachable = reachable
  }

  public class func fromJSON(_ json: JSON) -> Reachability {
    return Reachability(reachable: Reachable(rawValue: json["reachable"].intValue)!)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Reachability] {
    return json.map { fromJSON($0) }
  }

}

