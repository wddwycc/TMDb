import XCTest
import Moya
import RxMoya
import RxSwift
import RxBlocking
@testable import TMDb

final class TMDbTests: XCTestCase {
    func testRespModels() throws {
        let api = MoyaProvider<TMDb>(stubClosure: MoyaProvider.immediatelyStub)
        try run(api)
    }

    func testRealworldAPI() throws {
        let api = MoyaProvider<TMDb>(plugins: [
            TMDb.AuthPlugin(apiKey: ProcessInfo.processInfo.environment["API_KEY"]!)
        ])
        try run(api)
    }

    private func run(_ api: MoyaProvider<TMDb>) throws {
        _ = try api.rx.request(.latestMovie)
            .map(Movie.self)
            .toBlocking()
            .single()
    }


    static var allTests = [
        ("testRespModels", testRespModels),
        ("testRealworldAPI", testRealworldAPI),
    ]
    
}
