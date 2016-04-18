//
// This file is autogenerated
//

//
//  Constants.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Constants
//

public enum StatusCode: Int {
	case Scok = 0
	case Scloginrequired = 201
	case Scbadsession = 202
	case Scbadloginusernotfound = 203
	case Scbadloginpassword = 204
	case Scnotfound = 205
	case Scgeneric = 218
	case Scalreadyloggedin = 235
	case Sccanceled = 237
	case Scinputcanceled = 239
	case Screloginrequired = 274
	case Scresolutionfailed = 275
	case Scprofilenotpublic = 276
	case Scidentifyfailed = 277
	case Sctrackingbroke = 278
	case Scwrongcryptoformat = 279
	case Scbadsignupusernametaken = 701
	case Scbadinvitationcode = 707
	case Scmissingresult = 801
	case Sckeynotfound = 901
	case Sckeyinuse = 907
	case Sckeybadgen = 913
	case Sckeynosecret = 914
	case Sckeybaduids = 915
	case Sckeynoactive = 916
	case Sckeynosig = 917
	case Sckeybadsig = 918
	case Sckeybadeldest = 919
	case Sckeynoeldest = 920
	case Sckeyduplicateupdate = 921
	case Scsibkeyalreadyexists = 922
	case Scdecryptionkeynotfound = 924
	case Sckeynopgpencryption = 927
	case Sckeynonaclencryption = 928
	case Sckeysyncedpgpnotfound = 929
	case Sckeynomatchinggpg = 930
	case Scbadtracksession = 1301
	case Scdevicenotfound = 1409
	case Scdevicemismatch = 1410
	case Scdevicerequired = 1411
	case Scdeviceprevprovisioned = 1413
	case Scdevicenoprovision = 1414
	case Scstreamexists = 1501
	case Scstreamnotfound = 1502
	case Scstreamwrongkind = 1503
	case Scstreameof = 1504
	case Scapinetworkerror = 1601
	case Sctimeout = 1602
	case Scprooferror = 1701
	case Scidentificationexpired = 1702
	case Scselfnotfound = 1703
	case Scbadkexphrase = 1704
	case Scnouidelegation = 1705
	case Scnoui = 1706
	case Scgpgunavailable = 1707
	case Scinvalidversionerror = 1800
	case Scoldversionerror = 1801
	case Scinvalidlocationerror = 1802
	case Scservicestatuserror = 1803
	case Scinstallerror = 1804
}