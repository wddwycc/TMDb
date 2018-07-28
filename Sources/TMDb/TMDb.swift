import Foundation
import Moya


public enum TMDb {
    case movieLatest
    case movieDetail(id: Int)
}

extension TMDb: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    public var path: String {
        switch self {
        case .movieLatest:
            return "/movie/latest"
        case .movieDetail(id: let id):
            return "/movie/\(id)"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .movieLatest, .movieDetail:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .movieLatest, .movieDetail:
            return .requestPlain
        }
    }

    public var headers: [String : String]? {
        return nil
    }

    public var sampleData: Data {
        return self.respSample.data(using: .utf8, allowLossyConversion: true)!
    }
}
