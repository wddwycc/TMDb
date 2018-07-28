//
//  TMDb+Models.swift
//  TMDb
//
//  Created by duan on 2018/7/23.
//

import Foundation

extension TMDb {
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

    public struct MovieOutline: Codable {
        let poster_path: String?
        let adult: Bool
        let overview: String?
        let release_date: String
        let genre_ids: [Int]
        let id: Int
        let original_title: String
        let original_language: String
        let title: String
        let backdrop_path: String?
        let popularity: Decimal
        let vote_count: Int
        let video: Bool
        let vote_average: Decimal
    }

    public struct MovieDetail: Codable {
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
        let revenue: Int
        let runtime: Int?
        let spoken_languages: [Language]
        let status: MovieStatus
        let tagline: String?
        let title: String
        let video: Bool
        let vote_average: Decimal
        let vote_count: Int
    }

    public enum MovieStatus: String, Codable {
        case rumored = "Rumored"
        case planned = "Planned"
        case inProduction = "In Production"
        case postProduction = "Post Production"
        case released = "Released"
        case canceled = "Canceled"
    }

    public struct PaginatedResp<T: Codable>: Codable {
        let results: [T]
        let page: Int
        let total_pages: Int
        let total_results: Int
    }

    public struct PaginatedRespWithDates<T: Codable>: Codable {
        public struct Dates: Codable {
            let maximum: String
            let minimum: String
        }
        let results: [T]
        let dates: Dates
        let page: Int
        let total_pages: Int
        let total_results: Int
    }
}
