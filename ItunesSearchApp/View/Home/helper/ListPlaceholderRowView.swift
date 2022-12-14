//
//  ListPlaceholderRowView.swift
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct ListPlaceholderRowView: View {
    
    let state: FetchState
    let loadMore: () -> Void
    
    var body: some View {
        switch state {
            case .good:
                Color.clear
                    .onAppear {
                        loadMore()
                    }
            case .isLoading:
                ProgressView()
                    .progressViewStyle(.circular)
                    .frame(maxWidth: .infinity)
            case .loadedAll:
                EmptyView()
        case .noResults:
                Text("There is no data API...")
                    .foregroundColor(.gray)
            case .error(let message):
                Text(message)
                    .foregroundColor(.pink)
        }
    }
}

struct ListPlaceholderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListPlaceholderRowView(state: .noResults,
                               loadMore: { })
    }
}
