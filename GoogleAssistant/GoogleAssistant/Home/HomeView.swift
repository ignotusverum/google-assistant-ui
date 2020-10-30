//
//  HomeView.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import SwiftUI

extension HomeRowType: Identifiable {
    var id: String {
        switch self {
        case .suggestions: return "suggestions"
        case .title: return "title"
        case .trackCharge: return "trackCharge"
        case .upcomingCharge: return "upcoming charge"
        }
    }
}

struct HomeView: View {
    let datasource: [HomeRowType] = demoHomeDatasource
    
    var body: some View {
        VStack {
            HStack {
                Image("icon-assistant-default")
                Spacer()
                Image("avatar")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
            }
            .padding(.horizontal,
                     20)
            ScrollView {
                VStack {
                    ForEach(datasource) { row in
                        switch row {
                        case .title(let titleInfo):
                            HomeTitleRow(titleInfo: titleInfo)
                                .padding(.bottom, 20)
                        case .suggestions(let suggestionsInfo):
                            SuggestionsRow(suggestions: suggestionsInfo)
                                .padding(.bottom, 20)
                        case .upcomingCharge(let chargeInfos):
                            VStack(alignment: .leading) {
                                Text("Upcoming Charges")
                                    .padding(.leading, 15)
                                    .font(.headline)
                                UpcomingChargesRow(upcomingCharges: chargeInfos)
                            }
                            .padding(.horizontal, 20)
                        case .trackCharge(let trackInfo):
                            VStack(alignment: .leading) {
                                Text("Keep Track Of Things")
                                    .padding(.leading, 15)
                                    .font(.headline)
                                RecentChargesRow(recentChargeInfo: trackInfo)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                }
            }
            HStack {
                Image("icon-activity")
                    .foregroundColor(.blue)
                Spacer()
                Image("icon-assistant")
                    .resizable()
                    .frame(width: 40,
                           height: 40)
                Spacer()
                Image("icon-category-default")
                    .foregroundColor(.blue)
            }
            .padding(.horizontal,
                     20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
