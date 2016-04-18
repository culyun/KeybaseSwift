//
// This file is autogenerated
//

//
//  Block.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Block
//

public typealias Time = Int64

public class StringKVPair {

	public let key: String
	public let value: String

  public init(key: String, value: String) {
    self.key = key
		self.value = value
  }

  public class func fromJSON(json: JSON) -> StringKVPair {
    return StringKVPair(key: json["key"].stringValue, value: json["value"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [StringKVPair] {
    return json.map { fromJSON($0) }
  }
}


public class Status {

	public let code: Int
	public let name: String
	public let desc: String
	public let fields: [StringKVPair]

  public init(code: Int, name: String, desc: String, fields: [StringKVPair]) {
    self.code = code
		self.name = name
		self.desc = desc
		self.fields = fields
  }

  public class func fromJSON(json: JSON) -> Status {
    return Status(code: json["code"].intValue, name: json["name"].stringValue, desc: json["desc"].stringValue, fields: StringKVPair.fromJSONArray(json["fields"].arrayValue))
  }

  public class func fromJSONArray(json: [JSON]) -> [Status] {
    return json.map { fromJSON($0) }
  }
}

public typealias UID = String
public typealias DeviceID = String
public typealias SigID = String
public typealias KID = String

public class Text {

	public let data: String
	public let markup: Bool

  public init(data: String, markup: Bool) {
    self.data = data
		self.markup = markup
  }

  public class func fromJSON(json: JSON) -> Text {
    return Text(data: json["data"].stringValue, markup: json["markup"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [Text] {
    return json.map { fromJSON($0) }
  }
}


public class PGPIdentity {

	public let username: String
	public let comment: String
	public let email: String

  public init(username: String, comment: String, email: String) {
    self.username = username
		self.comment = comment
		self.email = email
  }

  public class func fromJSON(json: JSON) -> PGPIdentity {
    return PGPIdentity(username: json["username"].stringValue, comment: json["comment"].stringValue, email: json["email"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [PGPIdentity] {
    return json.map { fromJSON($0) }
  }
}


public class PublicKey {

	public let kid: String
	public let PGPFingerprint: String
	public let PGPIdentities: [PGPIdentity]
	public let isSibkey: Bool
	public let isEldest: Bool
	public let parentID: String
	public let deviceID: String
	public let deviceDescription: String
	public let deviceType: String
	public let cTime: Int64
	public let eTime: Int64

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

  public class func fromJSON(json: JSON) -> PublicKey {
    return PublicKey(kid: json["kid"].stringValue, PGPFingerprint: json["PGPFingerprint"].stringValue, PGPIdentities: PGPIdentity.fromJSONArray(json["PGPIdentities"].arrayValue), isSibkey: json["isSibkey"].boolValue, isEldest: json["isEldest"].boolValue, parentID: json["parentID"].stringValue, deviceID: json["deviceID"].stringValue, deviceDescription: json["deviceDescription"].stringValue, deviceType: json["deviceType"].stringValue, cTime: json["cTime"].int64Value, eTime: json["eTime"].int64Value)
  }

  public class func fromJSONArray(json: [JSON]) -> [PublicKey] {
    return json.map { fromJSON($0) }
  }
}


public class KeybaseTime {

	public let unix: Int64
	public let chain: Int

  public init(unix: Int64, chain: Int) {
    self.unix = unix
		self.chain = chain
  }

  public class func fromJSON(json: JSON) -> KeybaseTime {
    return KeybaseTime(unix: json["unix"].int64Value, chain: json["chain"].intValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [KeybaseTime] {
    return json.map { fromJSON($0) }
  }
}


public class RevokedKey {

	public let key: PublicKey
	public let time: KeybaseTime

  public init(key: PublicKey, time: KeybaseTime) {
    self.key = key
		self.time = time
  }

  public class func fromJSON(json: JSON) -> RevokedKey {
    return RevokedKey(key: PublicKey.fromJSON(json["key"]), time: KeybaseTime.fromJSON(json["time"]))
  }

  public class func fromJSONArray(json: [JSON]) -> [RevokedKey] {
    return json.map { fromJSON($0) }
  }
}


public class User {

	public let uid: String
	public let username: String

  public init(uid: String, username: String) {
    self.uid = uid
		self.username = username
  }

  public class func fromJSON(json: JSON) -> User {
    return User(uid: json["uid"].stringValue, username: json["username"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [User] {
    return json.map { fromJSON($0) }
  }
}


public class Device {

	public let type: String
	public let name: String
	public let deviceID: String
	public let cTime: Int64
	public let mTime: Int64
	public let encryptKey: String
	public let verifyKey: String
	public let status: Int

  public init(type: String, name: String, deviceID: String, cTime: Int64, mTime: Int64, encryptKey: String, verifyKey: String, status: Int) {
    self.type = type
		self.name = name
		self.deviceID = deviceID
		self.cTime = cTime
		self.mTime = mTime
		self.encryptKey = encryptKey
		self.verifyKey = verifyKey
		self.status = status
  }

  public class func fromJSON(json: JSON) -> Device {
    return Device(type: json["type"].stringValue, name: json["name"].stringValue, deviceID: json["deviceID"].stringValue, cTime: json["cTime"].int64Value, mTime: json["mTime"].int64Value, encryptKey: json["encryptKey"].stringValue, verifyKey: json["verifyKey"].stringValue, status: json["status"].intValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [Device] {
    return json.map { fromJSON($0) }
  }
}


public class Stream {

	public let fd: Int

  public init(fd: Int) {
    self.fd = fd
  }

  public class func fromJSON(json: JSON) -> Stream {
    return Stream(fd: json["fd"].intValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [Stream] {
    return json.map { fromJSON($0) }
  }
}

public enum LogLevel: Int {
	case None = 0
	case Debug = 1
	case Info = 2
	case Notice = 3
	case Warn = 4
	case Error = 5
	case Critical = 6
	case Fatal = 7
}

public enum ClientType: Int {
	case None = 0
	case Cli = 1
	case Gui = 2
	case Kbfs = 3
}


public class UserVersionVector {

	public let id: Int64
	public let sigHints: Int
	public let sigChain: Int64
	public let cachedAt: Int64
	public let lastIdentifiedAt: Int64

  public init(id: Int64, sigHints: Int, sigChain: Int64, cachedAt: Int64, lastIdentifiedAt: Int64) {
    self.id = id
		self.sigHints = sigHints
		self.sigChain = sigChain
		self.cachedAt = cachedAt
		self.lastIdentifiedAt = lastIdentifiedAt
  }

  public class func fromJSON(json: JSON) -> UserVersionVector {
    return UserVersionVector(id: json["id"].int64Value, sigHints: json["sigHints"].intValue, sigChain: json["sigChain"].int64Value, cachedAt: json["cachedAt"].int64Value, lastIdentifiedAt: json["lastIdentifiedAt"].int64Value)
  }

  public class func fromJSONArray(json: [JSON]) -> [UserVersionVector] {
    return json.map { fromJSON($0) }
  }
}


public class UserPlusKeys {

	public let uid: String
	public let username: String
	public let deviceKeys: [PublicKey]
	public let revokedDeviceKeys: [RevokedKey]
	public let pgpKeyCount: Int
	public let uvv: UserVersionVector

  public init(uid: String, username: String, deviceKeys: [PublicKey], revokedDeviceKeys: [RevokedKey], pgpKeyCount: Int, uvv: UserVersionVector) {
    self.uid = uid
		self.username = username
		self.deviceKeys = deviceKeys
		self.revokedDeviceKeys = revokedDeviceKeys
		self.pgpKeyCount = pgpKeyCount
		self.uvv = uvv
  }

  public class func fromJSON(json: JSON) -> UserPlusKeys {
    return UserPlusKeys(uid: json["uid"].stringValue, username: json["username"].stringValue, deviceKeys: PublicKey.fromJSONArray(json["deviceKeys"].arrayValue), revokedDeviceKeys: RevokedKey.fromJSONArray(json["revokedDeviceKeys"].arrayValue), pgpKeyCount: json["pgpKeyCount"].intValue, uvv: UserVersionVector.fromJSON(json["uvv"]))
  }

  public class func fromJSONArray(json: [JSON]) -> [UserPlusKeys] {
    return json.map { fromJSON($0) }
  }
}

public enum MerkleTreeID: Int {
	case Master = 0
	case KbfsPublic = 1
	case KbfsPrivate = 2
}

public typealias SocialAssertionService = String

public class SocialAssertion {

	public let user: String
	public let service: String

  public init(user: String, service: String) {
    self.user = user
		self.service = service
  }

  public class func fromJSON(json: JSON) -> SocialAssertion {
    return SocialAssertion(user: json["user"].stringValue, service: json["service"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SocialAssertion] {
    return json.map { fromJSON($0) }
  }
}


public class UserResolution {

	public let assertion: SocialAssertion
	public let userID: String

  public init(assertion: SocialAssertion, userID: String) {
    self.assertion = assertion
		self.userID = userID
  }

  public class func fromJSON(json: JSON) -> UserResolution {
    return UserResolution(assertion: SocialAssertion.fromJSON(json["assertion"]), userID: json["userID"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [UserResolution] {
    return json.map { fromJSON($0) }
  }
}


public class BlockIdCombo {

	public let blockHash: String
	public let chargedTo: String

  public init(blockHash: String, chargedTo: String) {
    self.blockHash = blockHash
		self.chargedTo = chargedTo
  }

  public class func fromJSON(json: JSON) -> BlockIdCombo {
    return BlockIdCombo(blockHash: json["blockHash"].stringValue, chargedTo: json["chargedTo"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [BlockIdCombo] {
    return json.map { fromJSON($0) }
  }
}


public class ChallengeInfo {

	public let now: Int64
	public let challenge: String

  public init(now: Int64, challenge: String) {
    self.now = now
		self.challenge = challenge
  }

  public class func fromJSON(json: JSON) -> ChallengeInfo {
    return ChallengeInfo(now: json["now"].int64Value, challenge: json["challenge"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [ChallengeInfo] {
    return json.map { fromJSON($0) }
  }
}


public class GetBlockRes {

	public let blockKey: String
	public let buf: NSData

  public init(blockKey: String, buf: NSData) {
    self.blockKey = blockKey
		self.buf = buf
  }

  public class func fromJSON(json: JSON) -> GetBlockRes {
    return GetBlockRes(blockKey: json["blockKey"].stringValue, buf: json["buf"].object as! NSData)
  }

  public class func fromJSONArray(json: [JSON]) -> [GetBlockRes] {
    return json.map { fromJSON($0) }
  }
}

public typealias BlockRefNonce = [UInt8] // Size: 8

public class BlockReference {

	public let bid: BlockIdCombo
	public let nonce: NSData
	public let chargedTo: String

  public init(bid: BlockIdCombo, nonce: NSData, chargedTo: String) {
    self.bid = bid
		self.nonce = nonce
		self.chargedTo = chargedTo
  }

  public class func fromJSON(json: JSON) -> BlockReference {
    return BlockReference(bid: BlockIdCombo.fromJSON(json["bid"]), nonce: json["nonce"].object as! NSData, chargedTo: json["chargedTo"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [BlockReference] {
    return json.map { fromJSON($0) }
  }
}


public class BlockReferenceCount {

	public let ref: BlockReference
	public let liveCount: Int

  public init(ref: BlockReference, liveCount: Int) {
    self.ref = ref
		self.liveCount = liveCount
  }

  public class func fromJSON(json: JSON) -> BlockReferenceCount {
    return BlockReferenceCount(ref: BlockReference.fromJSON(json["ref"]), liveCount: json["liveCount"].intValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [BlockReferenceCount] {
    return json.map { fromJSON($0) }
  }
}


public class DowngradeReferenceRes {

	public let completed: [BlockReferenceCount]
	public let failed: BlockReference

  public init(completed: [BlockReferenceCount], failed: BlockReference) {
    self.completed = completed
		self.failed = failed
  }

  public class func fromJSON(json: JSON) -> DowngradeReferenceRes {
    return DowngradeReferenceRes(completed: BlockReferenceCount.fromJSONArray(json["completed"].arrayValue), failed: BlockReference.fromJSON(json["failed"]))
  }

  public class func fromJSONArray(json: [JSON]) -> [DowngradeReferenceRes] {
    return json.map { fromJSON($0) }
  }
}