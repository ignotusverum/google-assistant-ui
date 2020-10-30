//
//  SuggestionsRow.swift
//  GoogleAssistant
//
//  Created by Vlad Z. on 10/30/20.
//

import SwiftUI

extension SuggestionCellInfo: Identifiable {
    var id: String { title }
    
    var image: Image {
        switch type {
        case .tag: return Image("icon-category-tag")
        case .track: return Image("icon-category-default")
        }
    }
}

struct SuggestionsRow: View {
    let suggestions: [SuggestionCellInfo]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(suggestions) { cellInfo in
                    HStack {
                        cellInfo.image
                            .foregroundColor(.blue)
                            .padding(.leading, 20)
                        Text(cellInfo.title)
                            .frame(maxWidth: 100)
                            .frame(height: 60)
                            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }.overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.gray,
                                    lineWidth: 1)
                            .opacity(0.4)
                            .padding(1)
                    )
                }
            }
        }
    }
}

struct SuggestionsRow_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionsRow(suggestions: demoSuggestions)
    }
}

