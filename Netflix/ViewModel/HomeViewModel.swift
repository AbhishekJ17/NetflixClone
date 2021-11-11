//
//  HomeViewModel.swift
//  Netflix
//
//  Created by Abhishek Jadhav on 12/11/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    /// String == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public func getMovie(for category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        
        movies["Trending Now"] = exmapleMovies
        movies["Stand-Up Comedy"] = exmapleMovies.shuffled()
        movies["New Released"] = exmapleMovies.shuffled()
        movies["Watch It Again"] = exmapleMovies.shuffled()
        movies["Sci-Fi Movies"] = exmapleMovies.shuffled()
    }
}
