//
//  Bill.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2023/1/2.
//

import Foundation
import ComposableArchitecture

internal struct Bill: ReducerProtocol {
  
  struct BillLink: Equatable, Identifiable {
    
    enum LinkType: Equatable, Identifiable {
      case pdf
      case doc
      
      var id: String {
        return title
      }
      
      var title: String {
        switch self {
        case .pdf:
          return "PDF"
        case .doc:
          return "DOC"
        }
      }
    }
    
    var type: LinkType
    var url: URL
    
    var id: String {
      return "\(type.id)_\(url.absoluteString)"
    }
  }
  
  struct State: Equatable {
    var meetingInfo: String
    var billNumber: String
    var billOrg: String
    
    var title: String
    var description: String
    
    var status: String
    var links: [BillLink]
  }
  
  enum Action: Equatable {
    case showBill
  }
  
  internal init() {}
  
  func reduce(into state: inout State, action: Action) -> ComposableArchitecture.EffectTask<Action> {
    switch action {
    case .showBill:
      return .none
    }
  }
}
