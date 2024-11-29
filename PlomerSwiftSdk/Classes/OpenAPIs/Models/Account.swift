//
// Account.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Account represents a user account in the system */
public struct Account: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var appleId: String
    public var email: String
    public var name: String
    public var enablePushNotifications: Bool = false
    public var identityToken: String?
    public var authCode: String?
    public var createdAt: String
    public var updatedAt: String

    public init(id: Int, appleId: String, email: String, name: String, enablePushNotifications: Bool = false, identityToken: String?, authCode: String?, createdAt: String, updatedAt: String) {
        self.id = id
        self.appleId = appleId
        self.email = email
        self.name = name
        self.enablePushNotifications = enablePushNotifications
        self.identityToken = identityToken
        self.authCode = authCode
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case appleId
        case email
        case name
        case enablePushNotifications
        case identityToken
        case authCode
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(appleId, forKey: .appleId)
        try container.encode(email, forKey: .email)
        try container.encode(name, forKey: .name)
        try container.encode(enablePushNotifications, forKey: .enablePushNotifications)
        try container.encode(identityToken, forKey: .identityToken)
        try container.encode(authCode, forKey: .authCode)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}

