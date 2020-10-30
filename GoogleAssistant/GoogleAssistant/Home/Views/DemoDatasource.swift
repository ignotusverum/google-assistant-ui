//
//  DemoDatasource.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import Foundation


let demoTitle = TitleCellInfo(title: "Rise and shine",
                              description: "14° C",
                              type: .sunny)

let demoSuggestions = [SuggestionCellInfo(title: "Tag some Charges",
                                          type: .tag),
                       SuggestionCellInfo(title: "Track a new Charge",
                                          type: .track),
                       SuggestionCellInfo(title: "Custom Charge",
                                          type: .track)]

let demoUpcoming = [UpcomingChargeCellInfo(title: "Spotify",
                                           description: "$30 to $50"),
                    UpcomingChargeCellInfo(title: "Netflix",
                                           description: "$20"),
                    UpcomingChargeCellInfo(title: "Verizon",
                                           description: "$50")]

let demoTrackCharge = TrackChargeCellInfo(category: .shopping,
                                          title: "Amazon",
                                          typeCopy: "Refund",
                                          desciption: "$30 * By 17th July")

let demoHomeDatasource: [HomeRowType] = [.title(demoTitle),
                                         .suggestions(demoSuggestions),
                                         .upcomingCharge(demoUpcoming),
                                         .trackCharge(demoTrackCharge)]
