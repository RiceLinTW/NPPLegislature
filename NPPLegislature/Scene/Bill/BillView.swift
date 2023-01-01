//
//  BillView.swift
//  NPPLegislature
//
//  Created by Rice Lin on 2023/1/1.
//

import SwiftUI
import ComposableArchitecture

internal struct BillView: View {
  
  let store: StoreOf<Bill>
    
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct BillView_Previews: PreviewProvider {
  static var previews: some View {
    BillView()
  }
}
