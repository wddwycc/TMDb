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
            rv.add(queryItem: URLQueryItem(name: "api_key", value: apiKey))
            return rv
        }
    }

    public struct LanguagePlugin: PluginType {
        let language: String
        public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
            var rv = request
            rv.add(queryItem: URLQueryItem(name: "language", value: language))
            return rv
        }
    }
}

fileprivate extension URLRequest {
    mutating func add(queryItem: URLQueryItem) {
        if let url = self.url, var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) {
            let queryItems: [URLQueryItem] = {
                if let query = urlComponents.queryItems {
                    return query + [queryItem]
                } else {
                    return [queryItem]
                }
            }()
            urlComponents.queryItems = queryItems
            self.url = urlComponents.url
        }
    }
}
