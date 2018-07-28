import Foundation
import Moya


public enum TMDb {
    case latestMovie
}

extension TMDb: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    public var path: String {
        switch self {
        case .latestMovie:
            return "/movie/latest"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .latestMovie:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case .latestMovie:
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
