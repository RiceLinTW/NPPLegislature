//
//  BillListView.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2023/1/1.
//

import SwiftUI
import ComposableArchitecture

struct BillListView: View {
  
  let store: StoreOf<BillList>
  
  struct ViewState {
    var bills: [BillRawData]
  }
  
  enum ViewAction {
    case loadBills
    case showBills
    case presentBill(index: Int)
  }
  
  internal init(store: StoreOf<BillList>) {
    self.store = store
  }
  
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct BillListView_Previews: PreviewProvider {
  static var previews: some View {
    BillListView(
      store: .init(
        initialState: .init(bills: []),
        reducer: BillList()
      )
    )
  }
}
