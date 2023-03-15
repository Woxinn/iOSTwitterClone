//
//  FeedView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 15.03.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0 ... 20, id:\.self ){ _ in
                    TwitterRowView() 
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
