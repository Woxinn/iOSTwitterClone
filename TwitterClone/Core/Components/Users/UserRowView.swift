//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 24.03.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        
        HStack(spacing:12) {
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment:.leading, spacing: 4) {
                Text("@durmushan")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("Durmuşhan Balkan")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
        
        
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
