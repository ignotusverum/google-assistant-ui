//
//  HomeCellType.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import Foundation

enum HomeRowType {
    case title(TitleCellInfo)
    case suggestions([SuggestionCellInfo])
    case upcomingCharge([UpcomingChargeCellInfo])
    case trackCharge(TrackChargeCellInfo)
}

enum TrackChargeCellCategory {
    case shopping
}

struct TrackChargeCellInfo {
    let category: TrackChargeCellCategory
    let title: String
    let typeCopy: String
    let desciption: String
}

struct UpcomingChargeCellInfo {
    let title: String
    let description: String
}

enum SuggestionType {
    case tag
    case track
}

struct SuggestionCellInfo {
    let title: String
    let type: SuggestionType
}

enum WeatherType {
    case sunny
    case cloudy
}

struct TitleCellInfo {
    let title: String
    let description: String
    let type: WeatherType
}
