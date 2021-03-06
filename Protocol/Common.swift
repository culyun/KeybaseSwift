//
// This file is autogenerated
//

//
//  Common.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Common
//

public typealias Time = Int64
public typealias DurationSec = Double

public class StringKVPair {

	public let key: String?
	public let value: String?

  public init(key: String, value: String) {
    self.key = key
		self.value = value
  }

  public class func fromJSON(_ json: JSON) -> StringKVPair {
    return StringKVPair(key: json["key"].stringValue, value: json["value"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [StringKVPair] {
    return json.map { fromJSON($0) }
  }

}



public class Status {

	public let code: Int?
	public let name: String?
	public let desc: String?
	public let fields: [StringKVPair]?

  public init(code: Int, name: String, desc: String, fields: [StringKVPair]) {
    self.code = code
		self.name = name
		self.desc = desc
		self.fields = fields
  }

  public class func fromJSON(_ json: JSON) -> Status {
    return Status(code: json["code"].intValue, name: json["name"].stringValue, desc: json["desc"].stringValue, fields: StringKVPair.fromJSONArray(json["fields"].arrayValue))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Status] {
    return json.map { fromJSON($0) }
  }

}


public typealias UID = String
public typealias DeviceID = String
public typealias SigID = String
public typealias KID = String
public typealias LinkID = String
public typealias BinaryKID = NSData
public typealias TLFID = String
public typealias Bytes32 = [UInt8] // Size: 32

public class Text {

	public let data: String?
	public let markup: Bool?

  public init(data: String, markup: Bool) {
    self.data = data
		self.markup = markup
  }

  public class func fromJSON(_ json: JSON) -> Text {
    return Text(data: json["data"].stringValue, markup: json["markup"].boolValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Text] {
    return json.map { fromJSON($0) }
  }

}



public class PGPIdentity {

	public let username: String?
	public let comment: String?
	public let email: String?

  public init(username: String, comment: String, email: String) {
    self.username = username
		self.comment = comment
		self.email = email
  }

  public class func fromJSON(_ json: JSON) -> PGPIdentity {
    return PGPIdentity(username: json["username"].stringValue, comment: json["comment"].stringValue, email: json["email"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [PGPIdentity] {
    return json.map { fromJSON($0) }
  }

}



public class PublicKey {

	public let kid: String?
	public let PGPFingerprint: String?
	public let PGPIdentities: [PGPIdentity]?
	public let isSibkey: Bool?
	public let isEldest: Bool?
	public let parentID: String?
	public let deviceID: String?
	public let deviceDescription: String?
	public let deviceType: String?
	public let cTime: Int64?
	public let eTime: Int64?

  public init(kid: String, PGPFingerprint: String, PGPIdentities: [PGPIdentity], isSibkey: Bool, isEldest: Bool, parentID: String, deviceID: String, deviceDescription: String, deviceType: String, cTime: Int64, eTime: Int64) {
    self.kid = kid
		self.PGPFingerprint = PGPFingerprint
		self.PGPIdentities = PGPIdentities
		self.isSibkey = isSibkey
		self.isEldest = isEldest
		self.parentID = parentID
		self.deviceID = deviceID
		self.deviceDescription = deviceDescription
		self.deviceType = deviceType
		self.cTime = cTime
		self.eTime = eTime
  }

  public class func fromJSON(_ json: JSON) -> PublicKey {
    return PublicKey(kid: json["kid"].stringValue, PGPFingerprint: json["PGPFingerprint"].stringValue, PGPIdentities: PGPIdentity.fromJSONArray(json["PGPIdentities"].arrayValue), isSibkey: json["isSibkey"].boolValue, isEldest: json["isEldest"].boolValue, parentID: json["parentID"].stringValue, deviceID: json["deviceID"].stringValue, deviceDescription: json["deviceDescription"].stringValue, deviceType: json["deviceType"].stringValue, cTime: json["cTime"].int64Value, eTime: json["eTime"].int64Value)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [PublicKey] {
    return json.map { fromJSON($0) }
  }

}



public class KeybaseTime {

	public let unix: Int64?
	public let chain: Int?

  public init(unix: Int64, chain: Int) {
    self.unix = unix
		self.chain = chain
  }

  public class func fromJSON(_ json: JSON) -> KeybaseTime {
    return KeybaseTime(unix: json["unix"].int64Value, chain: json["chain"].intValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [KeybaseTime] {
    return json.map { fromJSON($0) }
  }

}



public class RevokedKey {

	public let key: PublicKey?
	public let time: KeybaseTime?
	public let by: String?

  public init(key: PublicKey, time: KeybaseTime, by: String) {
    self.key = key
		self.time = time
		self.by = by
  }

  public class func fromJSON(_ json: JSON) -> RevokedKey {
    return RevokedKey(key: PublicKey.fromJSON(json["key"]), time: KeybaseTime.fromJSON(json["time"]), by: json["by"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [RevokedKey] {
    return json.map { fromJSON($0) }
  }

}



public class User {

	public let uid: String?
	public let username: String?

  public init(uid: String, username: String) {
    self.uid = uid
		self.username = username
  }

  public class func fromJSON(_ json: JSON) -> User {
    return User(uid: json["uid"].stringValue, username: json["username"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [User] {
    return json.map { fromJSON($0) }
  }

}



public class Device {

	public let type: String?
	public let name: String?
	public let deviceID: String?
	public let cTime: Int64?
	public let mTime: Int64?
	public let lastUsedTime: Int64?
	public let encryptKey: String?
	public let verifyKey: String?
	public let status: Int?

  public init(type: String, name: String, deviceID: String, cTime: Int64, mTime: Int64, lastUsedTime: Int64, encryptKey: String, verifyKey: String, status: Int) {
    self.type = type
		self.name = name
		self.deviceID = deviceID
		self.cTime = cTime
		self.mTime = mTime
		self.lastUsedTime = lastUsedTime
		self.encryptKey = encryptKey
		self.verifyKey = verifyKey
		self.status = status
  }

  public class func fromJSON(_ json: JSON) -> Device {
    return Device(type: json["type"].stringValue, name: json["name"].stringValue, deviceID: json["deviceID"].stringValue, cTime: json["cTime"].int64Value, mTime: json["mTime"].int64Value, lastUsedTime: json["lastUsedTime"].int64Value, encryptKey: json["encryptKey"].stringValue, verifyKey: json["verifyKey"].stringValue, status: json["status"].intValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Device] {
    return json.map { fromJSON($0) }
  }

}


public enum DeviceType: Int {
	case desktop = 0
	case mobile = 1
}


public class Stream {

	public let fd: Int?

  public init(fd: Int) {
    self.fd = fd
  }

  public class func fromJSON(_ json: JSON) -> Stream {
    return Stream(fd: json["fd"].intValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Stream] {
    return json.map { fromJSON($0) }
  }

}


public enum LogLevel: Int {
	case none = 0
	case debug = 1
	case info = 2
	case notice = 3
	case warn = 4
	case error = 5
	case critical = 6
	case fatal = 7
}

public enum ClientType: Int {
	case none = 0
	case cli = 1
	case gui = 2
	case kbfs = 3
}


public class UserVersionVector {

	public let id: Int64?
	public let sigHints: Int?
	public let sigChain: Int64?
	public let cachedAt: Int64?
	public let lastIdentifiedAt: Int64?

  public init(id: Int64, sigHints: Int, sigChain: Int64, cachedAt: Int64, lastIdentifiedAt: Int64) {
    self.id = id
		self.sigHints = sigHints
		self.sigChain = sigChain
		self.cachedAt = cachedAt
		self.lastIdentifiedAt = lastIdentifiedAt
  }

  public class func fromJSON(_ json: JSON) -> UserVersionVector {
    return UserVersionVector(id: json["id"].int64Value, sigHints: json["sigHints"].intValue, sigChain: json["sigChain"].int64Value, cachedAt: json["cachedAt"].int64Value, lastIdentifiedAt: json["lastIdentifiedAt"].int64Value)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [UserVersionVector] {
    return json.map { fromJSON($0) }
  }

}



public class UserPlusKeys {

	public let uid: String?
	public let username: String?
	public let deviceKeys: [PublicKey]?
	public let revokedDeviceKeys: [RevokedKey]?
	public let pgpKeyCount: Int?
	public let uvv: UserVersionVector?

  public init(uid: String, username: String, deviceKeys: [PublicKey], revokedDeviceKeys: [RevokedKey], pgpKeyCount: Int, uvv: UserVersionVector) {
    self.uid = uid
		self.username = username
		self.deviceKeys = deviceKeys
		self.revokedDeviceKeys = revokedDeviceKeys
		self.pgpKeyCount = pgpKeyCount
		self.uvv = uvv
  }

  public class func fromJSON(_ json: JSON) -> UserPlusKeys {
    return UserPlusKeys(uid: json["uid"].stringValue, username: json["username"].stringValue, deviceKeys: PublicKey.fromJSONArray(json["deviceKeys"].arrayValue), revokedDeviceKeys: RevokedKey.fromJSONArray(json["revokedDeviceKeys"].arrayValue), pgpKeyCount: json["pgpKeyCount"].intValue, uvv: UserVersionVector.fromJSON(json["uvv"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [UserPlusKeys] {
    return json.map { fromJSON($0) }
  }

}



public class RemoteTrack {

	public let username: String?
	public let uid: String?
	public let linkID: String?

  public init(username: String, uid: String, linkID: String) {
    self.username = username
		self.uid = uid
		self.linkID = linkID
  }

  public class func fromJSON(_ json: JSON) -> RemoteTrack {
    return RemoteTrack(username: json["username"].stringValue, uid: json["uid"].stringValue, linkID: json["linkID"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [RemoteTrack] {
    return json.map { fromJSON($0) }
  }

}



public class UserPlusAllKeys {

	public let base: UserPlusKeys?
	public let pgpKeys: [PublicKey]?
	public let remoteTracks: [RemoteTrack]?

  public init(base: UserPlusKeys, pgpKeys: [PublicKey], remoteTracks: [RemoteTrack]) {
    self.base = base
		self.pgpKeys = pgpKeys
		self.remoteTracks = remoteTracks
  }

  public class func fromJSON(_ json: JSON) -> UserPlusAllKeys {
    return UserPlusAllKeys(base: UserPlusKeys.fromJSON(json["base"]), pgpKeys: PublicKey.fromJSONArray(json["pgpKeys"].arrayValue), remoteTracks: RemoteTrack.fromJSONArray(json["remoteTracks"].arrayValue))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [UserPlusAllKeys] {
    return json.map { fromJSON($0) }
  }

}


public enum MerkleTreeID: Int {
	case master = 0
	case kbfsPublic = 1
	case kbfsPrivate = 2
}

public typealias SocialAssertionService = String

public class SocialAssertion {

	public let user: String?
	public let service: String?

  public init(user: String, service: String) {
    self.user = user
		self.service = service
  }

  public class func fromJSON(_ json: JSON) -> SocialAssertion {
    return SocialAssertion(user: json["user"].stringValue, service: json["service"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [SocialAssertion] {
    return json.map { fromJSON($0) }
  }

}



public class UserResolution {

	public let assertion: SocialAssertion?
	public let userID: String?

  public init(assertion: SocialAssertion, userID: String) {
    self.assertion = assertion
		self.userID = userID
  }

  public class func fromJSON(_ json: JSON) -> UserResolution {
    return UserResolution(assertion: SocialAssertion.fromJSON(json["assertion"]), userID: json["userID"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [UserResolution] {
    return json.map { fromJSON($0) }
  }

}

