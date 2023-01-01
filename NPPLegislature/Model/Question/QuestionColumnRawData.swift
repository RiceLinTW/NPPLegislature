//
//  QuestionColumnRawData.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2022/12/30.
//

import Foundation

internal struct QuestionColumnRawData: Decodable {
  let term: String
  let sessionPeriod: String
  let meetingDate: String
  let meetingTime: String
  let meetingTypeName: String
  let meetingName: String
  let meetingContent: String
  let legislatorName: String
  let areaName: String
  let speechStartTime: String
  let speechEndTime: String
  let speechRecordUrl: String
  let videoLength: String
  let videoUrl: String
  let selectTerm: String
}
