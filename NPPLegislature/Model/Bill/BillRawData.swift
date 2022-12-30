//
//  BillRawData.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2022/12/30.
//

import Foundation

internal struct BillRawData: Decodable {
    let id: Int
    let term: String
    let sessionPeriod: String
    let sessionTimes: String
    let meetingTimes: String
    let billNo: String
    let billName: String
    let billOrg: String
    let billProposer: String
    let billCosignatory: String
    let billStatus: String
    let pdfUrl: String
    let docUrl: String
    let selectTerm: String
    let rawDocContent: String
}
