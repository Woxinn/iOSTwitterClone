//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 24.03.2023.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing:4) {
                    Text("Durmuşhan Balkan")
                        .font(.headline)
                    
                    Text("@durmushan")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack(spacing: 16) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                    
                }
                .frame(height:40)
                .padding()
            }
            
            
            Spacer()
        }
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
