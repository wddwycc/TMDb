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
        try reqMap(.movieDetail(id: 550), TMDb.MovieDetail.self)
        try reqMap(.movieCredits(id: 550), TMDb.MovieCreditsResp.self)

        try reqMap(.movieLatest, TMDb.MovieDetail.self)
        try reqMap(.movieNowPlaying(page: nil, region: nil),
                   TMDb.PaginatedRespWithDates<TMDb.MovieOutline>.self)
        try reqMap(.moviePopular(page: nil, region: nil),
                   TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movieTopRated(page: nil, region: nil),
                   TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movieUpcoming(page: nil, region: nil),
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
