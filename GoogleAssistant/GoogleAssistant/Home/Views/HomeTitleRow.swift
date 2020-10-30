//
//  HomeTitleRow.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import SwiftUI
import Foundation

struct HomeTitleRow: View {
    let titleInfo: TitleCellInfo
    
    var body: some View {
        VStack {
            TitleText(text: titleInfo.title)
            HStack {
                Image("icon-\(titleInfo.type)")
                DescriptionText(text: titleInfo.description)
            }
        }
    }
}

struct TitleText: View {
    let text: String
    var body: some View {
        return Text(text)
            .foregroundColor(.primary)
            .font(.largeTitle)
            .bold()
    }
}

struct DescriptionText : View {
    let text: String
    var body: some View {
        return Text(text)
            .font(.footnote).fontWeight(.semibold)
            .foregroundColor(.secondary)
    }
}

struct HomeTitleRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeTitleRow(titleInfo: demoTitle)
    }
}
