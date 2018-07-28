import Foundation
import Moya


public enum TMDb {
    public enum MovieAPI {
        case detail(id: Int)
        case latest
        case nowPlaying(page: Int?, region: String?)
        case popular(page: Int?, region: String?)
        case topRated(page: Int?, region: String?)
        case upcoming(page: Int?, region: String?)
    }
    case movie(MovieAPI)
}

extension TMDb: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    public var path: String {
        switch self {
        case .movie(let type):
            switch type {
            case .detail(id: let id):
                return "/movie/\(id)"
            case .latest:
                return "/movie/latest"
            case .nowPlaying:
                return "/movie/now_playing"
            case .popular:
                return "/movie/popular"
            case .topRated:
                return "/movie/top_rated"
            case .upcoming:
                return "/movie/upcoming"
            }
        }
    }

    public var method: Moya.Method {
        switch self {
        case .movie(let type):
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .movie(let type):
            switch type {
            case .detail, .latest:
                return .requestPlain
            case .nowPlaying(let page, let region),
                 .popular(let page, let region),
                 .topRated(let page, let region),
                 .upcoming(let page, let region):
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
    }

    public var headers: [String : String]? {
        return nil
    }

    public var sampleData: Data {
        return Data()
    }
}
