//
//  BillResponseRawData.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2022/12/30.
//

import Foundation

internal struct BillResponseRawData: Decodable {
    let titles: String
    let bills: [BillRawData]
    let column: BillColumnRawData
}
