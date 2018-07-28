//
//  Models.swift
//  TMDb
//
//  Created by duan on 2018/7/23.
//

import Foundation


public struct Genre: Codable {
    let id: Int
    let name: String
}

public struct Language: Codable {
    let iso_639_1: String
    let name: String
}

public struct Company: Codable {
    let id: Int
    let name: String
    let logo_path: String?
    let origin_country: String
}

public struct Country: Codable {
    let iso_3166_1: String
    let name: String
}

public struct Movie: Codable {
    let adult: Bool
    let backdrop_path: String?
    let belongs_to_collection: String?
    let budget: Int
    let genres: [Genre]
    let homepage: String?
    let id: Int
    let imdb_id: String?
    let original_language: String
    let original_title: String
    let overview: String?
    let popularity: Decimal
    let poster_path: String?
    let production_companies: [Company]
    let production_countries: [Country]
    let release_date: String
    // Allowed Values: Rumored, Planned, In Production, Post Production, Released, Canceled
    let revenue: Int
    let runtime: Int?
    let spoken_languages: [Language]
    let status: Status
    let tagline: String?
    let title: String
    let video: Bool
    let vote_average: Decimal
    let vote_count: Int
}

public extension Movie {
    public enum Status: String, Codable {
        case rumored = "Rumored"
        case planned = "Planned"
        case inProduction = "In Production"
        case postProduction = "Post Production"
        case released = "Released"
        case canceled = "Canceled"
    }
}
