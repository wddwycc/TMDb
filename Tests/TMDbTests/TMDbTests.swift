import XCTest
import Moya
import RxMoya
import RxSwift
import RxBlocking
@testable import TMDb

final class TMDbTests: XCTestCase {
    let api = MoyaProvider<TMDb>(plugins: [
        TMDb.AuthPlugin(apiKey: ProcessInfo.processInfo.environment["API_KEY"]!)
    ])

    func testMoviesAPI() throws {
        try reqMap(.movie(.detail(id: 550)), TMDb.MovieDetail.self)
        try reqMap(.movie(.latest), TMDb.MovieDetail.self)
        try reqMap(.movie(.nowPlaying(page: nil, region: nil)),
                   TMDb.PaginatedRespWithDates<TMDb.MovieOutline>.self)
        try reqMap(.movie(.popular(page: nil, region: nil)),
                   TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movie(.topRated(page: nil, region: nil)),
                   TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movie(.upcoming(page: nil, region: nil)),
                   TMDb.PaginatedRespWithDates<TMDb.MovieOutline>.self)
    }

    private func reqMap<T: Codable>(_ endPoint: TMDb, _ target: T.Type) throws {
        _ = try api.rx.request(endPoint)
            .map(T.self)
            .toBlocking()
            .single()
    }

    static var allTests = [
        ("testAPI", testMoviesAPI),
    ]
}
