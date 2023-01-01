//
//  QuestionRawData.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2022/12/30.
//

import Foundation

internal struct QuestionRawData: Decodable {
  let id: Int
  let questionId: String
  let term: String
  let sessionPeriod: String
  let meetingDate: String
  let meetingTime: String
  let meetingTypeName: String
  let meetingName: String
  let meetingContent: String
}
