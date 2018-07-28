import Foundation
import Moya


enum TMDb {
    case latestMovie
}

extension TMDb: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    var path: String {
        switch self {
        case .latestMovie:
            return "/movie/latest"
        }
    }

    var method: Moya.Method {
        switch self {
        case .latestMovie:
            return .get
        }
    }

    var task: Task {
        switch self {
        case .latestMovie:
            return .requestPlain
        }
    }

    var headers: [String : String]? {
        return nil
    }

    var sampleData: Data {
        return self.respSample.data(using: .utf8)!
    }
}
