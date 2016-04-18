//
// This file is autogenerated
//

//
//  MetadataRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Metadata
//

public class MetadataRequest: Request {

  public func getChallenge() throws -> ChallengeInfo {
    let args: [String: AnyObject] = [String: AnyObject]()
    let response = try self.sendRequest("keybase.1.metadata.getChallenge", args: args)
    try checkNull(response)
    return ChallengeInfo.fromJSON(JSON(response))
  }

  public func authenticate(signature: String) throws -> Int {
    let args: [String: AnyObject] = ["signature": signature]
    let response = try self.sendRequest("keybase.1.metadata.authenticate", args: args)
    try checkNull(response)
    return JSON(response).intValue
  }

  public func putMetadata(mdBlock: MDBlock, logTags: [String: String]) throws {
    let args: [String: AnyObject] = ["mdBlock": mdBlock, "logTags": logTags]
    try self.sendRequest("keybase.1.metadata.putMetadata", args: args)
  }

  public func getMetadata(folderID: String, folderHandle: NSData, branchID: String, unmerged: Bool, startRevision: Int64, stopRevision: Int64, logTags: [String: String]) throws -> MetadataResponse {
    let args: [String: AnyObject] = ["folderID": folderID, "folderHandle": folderHandle, "branchID": branchID, "unmerged": unmerged, "startRevision": NSNumber(longLong: startRevision), "stopRevision": NSNumber(longLong: stopRevision), "logTags": logTags]
    let response = try self.sendRequest("keybase.1.metadata.getMetadata", args: args)
    try checkNull(response)
    return MetadataResponse.fromJSON(JSON(response))
  }

  public func registerForUpdates(folderID: String, currRevision: Int64, logTags: [String: String]) throws {
    let args: [String: AnyObject] = ["folderID": folderID, "currRevision": NSNumber(longLong: currRevision), "logTags": logTags]
    try self.sendRequest("keybase.1.metadata.registerForUpdates", args: args)
  }

  public func pruneBranch(folderID: String, branchID: String, logTags: [String: String]) throws {
    let args: [String: AnyObject] = ["folderID": folderID, "branchID": branchID, "logTags": logTags]
    try self.sendRequest("keybase.1.metadata.pruneBranch", args: args)
  }

  public func putKeys(keyHalves: [KeyHalf], logTags: [String: String]) throws {
    let args: [String: AnyObject] = ["keyHalves": keyHalves, "logTags": logTags]
    try self.sendRequest("keybase.1.metadata.putKeys", args: args)
  }

  public func getKey(keyHalfID: NSData, deviceKID: String, logTags: [String: String]) throws -> NSData {
    let args: [String: AnyObject] = ["keyHalfID": keyHalfID, "deviceKID": deviceKID, "logTags": logTags]
    let response = try self.sendRequest("keybase.1.metadata.getKey", args: args)
    try checkNull(response)
    return JSON(response).object as! NSData
  }

  public func deleteKey(uid: String, deviceKID: String, keyHalfID: NSData, logTags: [String: String]) throws {
    let args: [String: AnyObject] = ["uid": uid, "deviceKID": deviceKID, "keyHalfID": keyHalfID, "logTags": logTags]
    try self.sendRequest("keybase.1.metadata.deleteKey", args: args)
  }

  public func truncateLock(folderID: String) throws -> Bool {
    let args: [String: AnyObject] = ["folderID": folderID]
    let response = try self.sendRequest("keybase.1.metadata.truncateLock", args: args)
    try checkNull(response)
    return JSON(response).boolValue
  }

  public func truncateUnlock(folderID: String) throws -> Bool {
    let args: [String: AnyObject] = ["folderID": folderID]
    let response = try self.sendRequest("keybase.1.metadata.truncateUnlock", args: args)
    try checkNull(response)
    return JSON(response).boolValue
  }

  public func getFolderHandle(folderID: String, signature: String, challenge: String) throws -> NSData {
    let args: [String: AnyObject] = ["folderID": folderID, "signature": signature, "challenge": challenge]
    let response = try self.sendRequest("keybase.1.metadata.getFolderHandle", args: args)
    try checkNull(response)
    return JSON(response).object as! NSData
  }

  public func getFoldersForRekey(deviceKID: String) throws {
    let args: [String: AnyObject] = ["deviceKID": deviceKID]
    try self.sendRequest("keybase.1.metadata.getFoldersForRekey", args: args)
  }

  public func ping() throws {
    let args: [String: AnyObject] = [String: AnyObject]()
    try self.sendRequest("keybase.1.metadata.ping", args: args)
  }

  public func getMerkleRoot(treeID: MerkleTreeID, seqNo: Int64) throws -> MerkleRoot {
    let args: [String: AnyObject] = ["treeID": treeID.rawValue, "seqNo": NSNumber(longLong: seqNo)]
    let response = try self.sendRequest("keybase.1.metadata.getMerkleRoot", args: args)
    try checkNull(response)
    return MerkleRoot.fromJSON(JSON(response))
  }

  public func getMerkleRootLatest(treeID: MerkleTreeID) throws -> MerkleRoot {
    let args: [String: AnyObject] = ["treeID": treeID.rawValue]
    let response = try self.sendRequest("keybase.1.metadata.getMerkleRootLatest", args: args)
    try checkNull(response)
    return MerkleRoot.fromJSON(JSON(response))
  }

  public func getMerkleRootSince(treeID: MerkleTreeID, when: Int64) throws -> MerkleRoot {
    let args: [String: AnyObject] = ["treeID": treeID.rawValue, "when": NSNumber(longLong: when)]
    let response = try self.sendRequest("keybase.1.metadata.getMerkleRootSince", args: args)
    try checkNull(response)
    return MerkleRoot.fromJSON(JSON(response))
  }

  public func getMerkleNode(hash: String) throws -> NSData {
    let args: [String: AnyObject] = ["hash": hash]
    let response = try self.sendRequest("keybase.1.metadata.getMerkleNode", args: args)
    try checkNull(response)
    return JSON(response).object as! NSData
  }

}