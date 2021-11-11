//
//  HomeView.swift
//  Netflix
//
//  Created by Abhishek Jadhav on 12/11/21.
//

import SwiftUI

struct HomeView: View {
    
    var homeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            /// Main VStack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    ForEach.init(homeViewModel.allCategories, id: \.self) { category in
                        
                        VStack {
                            
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(homeViewModel.getMovie(for: category), id: \.self) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                            
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
