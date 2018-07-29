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

    public struct Actor: Codable {
        let id: Int
        let cast_id: Int
        let character: String
        let credit_id: String
        let gender: Int?
        let name: String
        let order: Int
        let profile_path: String?
    }

    public struct Member: Codable {
        let id: Int
        let credit_id: String
        let department: String
        let gender: Int?
        let job: String
        let name: String
        let profile_path: String?
    }

    public struct Keyword: Codable {
        let id: Int
        let name: String
    }

    public struct MovieOutline: Codable {
        let id: Int
        let poster_path: String?
        let adult: Bool
        let overview: String?
        let release_date: String
        let genre_ids: [Int]
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
        let id: Int
        let adult: Bool
        let backdrop_path: String?
        let belongs_to_collection: MovieCollection?
        let budget: Int
        let genres: [Genre]
        let homepage: String?
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

    public struct MovieCollection: Codable {
        let id: Int
        let name: String
        let poster_path: String?
        let backdrop_path: String?
    }

    public enum MovieStatus: String, Codable {
        case rumored = "Rumored"
        case planned = "Planned"
        case inProduction = "In Production"
        case postProduction = "Post Production"
        case released = "Released"
        case canceled = "Canceled"
    }

    public struct MovieImage: Codable {
        let file_path: String

        let width: Int
        let height: Int
        let aspect_ratio: Double

        let iso_639_1: String?
        let vote_average: Decimal
        let vote_count: Int
    }

    public enum MovieReleaseType: Int, Codable {
        case premiere = 1
        case theatrical_limited
        case theatrical
        case digital
        case physical
        case tv
    }

    public struct MovieRelease: Codable {
        let type: MovieReleaseType
        let release_date: String
        let certification: String
        let iso_639_1: String
        let note: String?
    }

    public struct MovieVideo: Codable {
        let id: String
        let iso_639_1: String
        let iso_3166_1: String
        let key: String
        let name: String
        let site: String
        /// 360, 480, 720, 1080
        let size: Int
        let type: MovieVideoType
    }

    public enum MovieVideoType: String, Codable {
        case trailer = "Trailer"
        case teaser = "Teaser"
        case clip = "Clip"
        case featurette = "Featurette"
    }
}
