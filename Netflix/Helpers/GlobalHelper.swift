//
//  GlobalHelper.swift
//  Netflix
//
//  Created by Abhishek Jadhav on 12/11/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: categories)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Traveller", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: categories)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: categories)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: categories)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Mannial", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: categories)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: categories)


let exmapleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
let categories = ["Dystopian", "Exciting", "Suspensful", "Sci-Fi", "TV"]


extension LinearGradient {
    
    static let blackOpacity = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
                                             startPoint: .top,
                                             endPoint: .bottom)
}
