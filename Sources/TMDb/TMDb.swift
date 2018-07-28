//
//  TMDb.swift
//  TMDb
//
//  Created by duan on 2018/7/23.
//

import Foundation
import Moya


public enum TMDb {
    case movieDetail(id: Int)
    case movieCredits(id: Int)
    case movieExternalIds(id: Int)
    case movieImages(id: Int)
    case movieKeywords(id: Int)
    case movieReleaseDates(id: Int)
//    case movieVideos(id: Int)
//    case movieRecommendations(id: Int)
//    case movieSimilar(id: Int)
//    case movieReviews(id: Int)

    case movieLatest
    case movieNowPlaying(page: Int?, region: String?)
    case moviePopular(page: Int?, region: String?)
    case movieTopRated(page: Int?, region: String?)
    case movieUpcoming(page: Int?, region: String?)
}

extension TMDb: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    public var path: String {
        switch self {
        case .movieDetail(let id): return "/movie/\(id)"
        case .movieCredits(let id): return "/movie/\(id)/credits"
        case .movieExternalIds(let id): return "/movie/\(id)/external_ids"
        case .movieImages(let id): return "/movie/\(id)/images"
        case .movieKeywords(let id): return "/movie/\(id)/keywords"
        case .movieReleaseDates(let id): return "/movie/\(id)/release_dates"

        case .movieLatest: return "/movie/latest"
        case .movieNowPlaying: return "/movie/now_playing"
        case .moviePopular: return "/movie/popular"
        case .movieTopRated: return "/movie/top_rated"
        case .movieUpcoming: return "/movie/upcoming"
        }
    }

    public var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .movieNowPlaying(let page, let region),
             .moviePopular(let page, let region),
             .movieTopRated(let page, let region),
             .movieUpcoming(let page, let region):
            return .requestParameters(
                parameters: [
                    "page": page ?? "",
                    "region": region ?? "",
                ],
                encoding: URLEncoding())
        default:
            return .requestPlain
        }
    }

    public var headers: [String : String]? {
        return nil
    }

    public var sampleData: Data {
        return Data()
    }
}
