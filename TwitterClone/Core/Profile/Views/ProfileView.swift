//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Durmushan Balkan on 16.03.2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    
    var body: some View {
        VStack(alignment: .leading){
            headerView
           
            actionButtons
            
            userInfos
            
            tweetFilterBar
            
            switch selectedFilter.title {
            case "Tweets":
                tweetsView
                
            case "Replies":
                repliesView
            
            case "Likes":
                likesView
                
            default:
                tweetsView
            }
            
         
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                        .offset(x: 16,y: 12)
                }
                HStack {
                    Circle()
                        .frame(width: 72,height: 72)
                        .offset(x:16,y:24)
                    
                }
            }
            
        }
        .frame(height: 96)
    }
    
    var actionButtons: some View {
        HStack(spacing:12) {
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "bell.badge")
                    .foregroundColor(.black)
                    .font(.title3)
                    .padding(6)
                    .overlay(Circle().stroke(Color.gray,lineWidth: 0.75))
            }
            Button {
                
            } label: {
                
              Text("Edit Profile")
                    .foregroundColor(.black)
                    .frame(width: 120,height: 32)
                    .font(.headline).bold()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth:0.75))
            }
            

        }.padding(.trailing)
        
    }
    
    var userInfos: some View{
        
        VStack(alignment: .leading, spacing: 4){
            HStack {
                Text("Durmushan Balkan")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            Text("@durmushann")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Your favorite developer")
                .font(.subheadline)
                .padding(.vertical )
            
            HStack(spacing: 24) {
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Konya,TR")
                }
                
               
                
                HStack {
                    Image(systemName: "link")
                    Text("www.dbalkan.com")
                        
                }
                
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            
            UserStatsView()
            .padding(.vertical)
            
            
        }
        .padding(.horizontal )
    }
    
    var tweetFilterBar: some View {
        
        HStack {
            ForEach(TweetFilterViewModel.allCases, id:\.rawValue) { item in
                VStack {
                    Text(item.title)
                    .font(.subheadline)
                    .fontWeight(selectedFilter == item ? .semibold : .regular)
                    .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
       
    }
    
    var tweetsView: some View{
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0 ... 9  , id:\.self ){ _ in
                    TwitterRowView()
                }
            }
        }
    }
    
    var repliesView: some View{
        Text("RepliesView")
    }
    
    var likesView: some View {
        Text("LikesView")
    }
}
