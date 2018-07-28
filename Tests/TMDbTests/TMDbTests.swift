import XCTest
import Moya
import RxMoya
import RxSwift
import RxBlocking
@testable import TMDb

final class TMDbTests: XCTestCase {
    let api = MoyaProvider<TMDb>(plugins: [
        TMDb.AuthPlugin(apiKey: ProcessInfo.processInfo.environment["API_KEY"]!),
        // TMDb.LanguagePlugin(language: "en-US"),
    ])

    let movieId = 550

    func testMoviesAPI() throws {
        try reqMap(.movieDetail(id: movieId), TMDb.MovieDetail.self)
        try reqMap(.movieCredits(id: movieId), TMDb.MovieCreditsResp.self)
        try reqMap(.movieExternalIds(id: movieId), TMDb.MovieExternalIdsResp.self)
        try reqMap(.movieImages(id: movieId, includeImageLanguages: nil), TMDb.MovieImagesResp.self)
        try reqMap(.movieKeywords(id: movieId), TMDb.MovieKeywordsResp.self)
        try reqMap(.movieReleaseDates(id: movieId), TMDb.MovieReleaseDatesResp.self)
        try reqMap(.movieVideos(id: movieId), TMDb.MovieReleaseDatesResp.self)

        try reqMap(.movieLatest, TMDb.MovieDetail.self)
        try reqMap(.movieNowPlaying(page: nil, region: nil), TMDb.PaginatedRespWithDates<TMDb.MovieOutline>.self)
        try reqMap(.moviePopular(page: nil, region: nil), TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movieTopRated(page: nil, region: nil), TMDb.PaginatedResp<TMDb.MovieOutline>.self)
        try reqMap(.movieUpcoming(page: nil, region: nil), TMDb.ListResp<TMDb.MovieVideo>.self)
    }

    private func reqMap<T: Codable>(_ endPoint: TMDb, _ target: T.Type) throws {
        print(endPoint)
        _ = try api.rx.request(endPoint)
            .do(onSuccess: { (resp) in
                print(resp.request!.url!)
                print(String(data: resp.data, encoding: .utf8)!)
            })
            .map(T.self)
            .do(onError: { (err) in
                print(err)
            })
            .toBlocking()
            .single()
    }

    static var allTests = [
        ("testAPI", testMoviesAPI),
    ]
}
