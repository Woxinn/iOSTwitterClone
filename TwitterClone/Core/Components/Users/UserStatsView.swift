//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 24.03.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(alignment:.center ,spacing: 4) {
                Text("807")
                    .font(.subheadline )
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(alignment:.center ,spacing:4) {
                Text("7.2M")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
                    
            }
            
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
