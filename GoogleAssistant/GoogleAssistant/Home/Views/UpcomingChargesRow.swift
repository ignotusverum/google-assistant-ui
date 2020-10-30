//
//  UpcomingChargesRow.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import SwiftUI

extension UpcomingChargeCellInfo: Identifiable {
    var id: String { title }
}

struct UpcomingChargesRow: View {
    let upcomingCharges: [UpcomingChargeCellInfo]
    
    var body: some View {
        VStack {
            HStack {
                Text("Coming up tomorrow")
                    .font(Font.callout.weight(.medium))
                    .padding(.vertical,
                             10)
                Spacer()
                Image("icon-more")
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading) {
                ForEach(upcomingCharges) { chargeInfo in
                    VStack(alignment: .leading) {
                        Text(chargeInfo.title)
                            .font(Font.body.weight(.bold))
                        HStack {
                            Circle()
                                .frame(width: 10,
                                       height: 10)
                                .foregroundColor(.blue)
                            Text(chargeInfo.description)
                                .foregroundColor(.gray)
                                .font(Font.callout)
                            Spacer()
                        }
                        .padding(.leading, 10)
                    }
                }
                Text("+ See all")
                    .foregroundColor(.blue)
                    .font(Font.callout)
                    .padding(.vertical, 5)
            }
        }
        .padding(25)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray,
                        lineWidth: 1)
                .opacity(0.4)
                .padding(5)
        )
    }
}

struct UpcomingChargesRow_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingChargesRow(upcomingCharges: demoUpcoming)
    }
}

