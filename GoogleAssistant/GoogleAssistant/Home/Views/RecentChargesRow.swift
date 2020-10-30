//
//  RecentChargesRow.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import SwiftUI

extension TrackChargeCellInfo: Identifiable {
    var id: String { title }
}

struct RecentChargesRow: View {
    let recentChargeInfo: TrackChargeCellInfo
    
    var body: some View {
        VStack {
            HStack {
                Image("icon-tap")
                    .foregroundColor(.gray)
                Text("Recent")
                    .font(Font.footnote.weight(.bold))
                Spacer()
                Image("icon-more")
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 20)
            HStack {
                ZStack {
                    Circle()
                        .foregroundColor(.yellow)
                        .opacity(0.3)
                    Image("icon-cart")
                        .resizable()
                        .opacity(0.6)
                        .frame(width: 20, height: 20)
                }
                .frame(width: 50,
                       height: 50)
                
                VStack(alignment: .leading) {
                    Text(recentChargeInfo.title)
                        .font(Font.body.weight(.bold))
                    HStack {
                        Text(recentChargeInfo.typeCopy)
                            .foregroundColor(.gray)
                            .font(Font.callout)
                        Spacer()
                        Image("icon-arrow-down")
                            .foregroundColor(.gray)
                    }
                    Text(recentChargeInfo.desciption)
                        .foregroundColor(.gray)
                        .font(Font.callout)
                }
                .padding(.leading, 10)
            }
        }
        .padding(25)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray,
                        lineWidth: 1)
                .opacity(0.4)
                .padding(5))
    }
}

struct RecentChargesRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentChargesRow(recentChargeInfo: demoTrackCharge)
    }
}
