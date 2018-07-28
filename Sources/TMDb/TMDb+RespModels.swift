//
//  TMDb+RespModels.swift
//  TMDb
//
//  Created by duan on 2018/7/29.
//

import Foundation


extension TMDb {
    public struct ListResp<T: Codable>: Codable {
        let id: Int
        let results: [T]
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

    public struct MovieCreditsResp: Codable {
        let id: Int
        let cast: [Actor]
        let crew: [Member]
    }

    public struct MovieExternalIdsResp: Codable {
        let id: Int
        let imdb_id: String?
        let facebook_id: String?
        let instagram_id: String?
        let twitter_id: String?
    }

    public struct MovieImagesResp: Codable {
        let id: Int
        let backdrops: [MovieImage]
        let posters: [MovieImage]
    }

    public struct MovieKeywordsResp: Codable {
        let id: Int
        let keywords: [Keyword]
    }

    public struct MovieReleaseDatesResp: Codable {
        struct Result: Codable {
            let iso_3166_1: String
            let release_dates: [MovieRelease]
        }
        let id: Int
        let results: [Result]
    }
}
