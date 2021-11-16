//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by Abhishek Jadhav on 12/11/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
                
            VStack(spacing: 10) {
                Spacer()
                
                HStack {
                    
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 5))
                            }
                        }
                    }
                    
                }
                
                HStack {
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        // action
                    }
                    
                    Spacer()
                     
                    WhiteButton(text: "Play", imageName: "play.fill") {
                         
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // action
                    }

                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacity)
                        .padding(.top, 250)
            .foregroundColor(.white)
        }
        
    }
    
    func isCategoryLast(_ category: String) -> Bool {
        let categoryCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != categoryCount {
                return false
            }
        }
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
