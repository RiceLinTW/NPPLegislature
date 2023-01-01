//
//  Bill.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2023/1/2.
//

import Foundation
import ComposableArchitecture

internal struct Bill: ReducerProtocol {
  
  enum BillLink: Equatable {
    case pdf(URL: URL)
    case doc(URL: URL)
  }
  
  struct State: Equatable {
    var title: String // 議案編號、提案名稱
    var subtitle: String // 屆別、會期、會次（臨時會次）
    var description: String // 案由
    
    var state: String
    var links: [BillLink]
    
    var billNumber: String // 議案編號
    var billOrg: String // 提案單位/委員
  }
  
  enum Action: Equatable {
    case showBill
  }
  
  func reduce(into state: inout State, action: Action) -> ComposableArchitecture.EffectTask<Action> {
    switch action {
    case .showBill:
      return .none
    }
  }
}
