//
//  TwitterRowView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 15.03.2023.
//

import SwiftUI

struct TwitterRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56,height: 56)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Durmushan Balkan")
                            .font(.subheadline).bold()
                        
                        Text("@durmushan")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text(Image(systemName: "circle.fill"))
                            .font(.system(size:3))
                            .foregroundColor(.gray)
                            
                        
                        Text("2w")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Text("Bu bir Tweet icerigi.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    HStack(alignment: .top) {
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "bubble.left")
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Button {
                            //
                        } label: {
                            Image(systemName: "arrow.2.squarepath")
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Button {
                            //
                        } label: {
                            Image(systemName: "heart")
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Button {
                            //
                        } label: {
                            Image(systemName: "bookmark")
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()

                    }.padding(.top, 1)
                }
            }.padding()
            
            
            
            Divider()
        }
    }
}

struct TwitterRowView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterRowView()
    }
}
