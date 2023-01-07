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
    WithViewStore(self.store, observe: { $0}) { viewStore in
      VStack {
        VStack(alignment: .leading) {
          HStack {
            Text.init(viewStore.meetingInfo)
              .font(.subheadline)
            Spacer()
            Text.init("第\(viewStore.billNumber)案")
          }
          HStack {
            Text.init("提案者：\(viewStore.billOrg)")
            Spacer()
            Text.init("狀態：\(viewStore.status)")
          }
          Divider()
          Text.init(viewStore.title)
            .font(.title)
          Divider()
          Text.init(viewStore.description)
            .lineLimit(nil)
          Divider()
          Text.init("相關文書：")
          VStack {
            ForEach(viewStore.links) { link in
              Link(link.type.title, destination: link.url)
            }
          }
        }
        .frame(maxHeight: 300)
        .fixedSize(horizontal: false, vertical: true)
      }
    }
  }
}

struct BillView_Previews: PreviewProvider {
  static var previews: some View {
    BillView(
      store: .init(
        initialState: .init(
          meetingInfo: "第10屆 第06會期 第14會次",
          billNumber: "1111226070200900",
          billOrg: "本院時代力量黨團",
          title: "「學生輔導法第十一條條文修正草案」，請審議案。",
          description: """
          案由：本院時代力量黨團，有鑑於校園安全事件之學生自殺、自傷件數逐年增長，學生輔導需求持續增加，現行高級中等以下學校置專任專業輔導人員、專科以上學校置專業輔導人員之數額配置標準已不符實際需求，難以實踐校園輔導三級預防策略，應檢討並增加專任專業輔導人員人力，以承接住每一個有輔導需求的學生。爰此提案修正「學生輔導法第十一條條文修正草案」。是否有當？敬請公決。 說明：修正高級中等以下學校置專任專業輔導人員、專科以上學校置專業輔導人員之數額配置標準。（修正條文第十一條）
          """,
          status: "排入院會",
          links: [
            .init(
              type: .pdf,
              url: .init(
                string: "http://lci.ly.gov.tw/LyLCEW/agenda1/02/pdf/10/06/14/LCEWA01_100614_00043.pdf"
              )!
            ),
            .init(
              type: .doc,
              url: .init(
                string: "http://lci.ly.gov.tw/LyLCEW/agenda1/02/word/10/06/14/LCEWA01_100614_00043.doc"
              )!
            )
          ]
        ),
        reducer: Bill()
      )
    )
  }
}
