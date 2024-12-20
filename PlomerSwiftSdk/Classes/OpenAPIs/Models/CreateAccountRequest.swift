//
// CreateAccountRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateAccountRequest: Codable, JSONEncodable, Hashable {

    public var appleId: String
    public var email: String
    public var name: String
    public var enablePushNotifications: Bool? = false
    public var identityToken: String?
    public var authCode: String?

    public init(appleId: String, email: String, name: String, enablePushNotifications: Bool? = false, identityToken: String?, authCode: String?) {
        self.appleId = appleId
        self.email = email
        self.name = name
        self.enablePushNotifications = enablePushNotifications
        self.identityToken = identityToken
        self.authCode = authCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appleId
        case email
        case name
        case enablePushNotifications
        case identityToken
        case authCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appleId, forKey: .appleId)
        try container.encode(email, forKey: .email)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(enablePushNotifications, forKey: .enablePushNotifications)
        try container.encode(identityToken, forKey: .identityToken)
        try container.encode(authCode, forKey: .authCode)
    }
}

