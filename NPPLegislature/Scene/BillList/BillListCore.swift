//
//  BillListCore.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2023/1/1.
//

import Foundation
import ComposableArchitecture

internal struct BillList: ReducerProtocol {
  
  struct State: Equatable {
    var bills: [BillRawData]
  }
  
  internal enum Action: Equatable {
    case loadBills
    case showBills
    case presentBill(index: Int)
  }
  
  internal init() {}
  
  internal var body: some ReducerProtocol<State, Action> {
    Reduce.init { state, action in
      switch action {
      case .loadBills:
        state.bills = []
        return .none
        
      case .showBills:
        return .none
        
      case let .presentBill(index):
        return .none
        
      }
    }
  }
}
