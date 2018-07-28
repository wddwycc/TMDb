//
//  TMDb+AuthPlugin.swift
//  TMDb
//
//  Created by duan on 2018/7/28.
//

import Foundation
import Moya


public extension TMDb {
    public struct AuthPlugin: PluginType {
        let apiKey: String

        public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
            var rv = request
            if let url = request.url, var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) {
                let apiKeyQueryItem = URLQueryItem(name: "api_key", value: apiKey)
                let queryItems: [URLQueryItem] = {
                    if let query = urlComponents.queryItems {
                        return query + [apiKeyQueryItem]
                    } else {
                        return [apiKeyQueryItem]
                    }
                }()
                urlComponents.queryItems = queryItems
                rv.url = urlComponents.url
            }
            return rv
        }
    }
}
