//
// ApiKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** API Key for authentication */
public struct ApiKey: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var accountId: Int
    public var name: String
    public var key: String
    public var lastUsedAt: String?
    public var expiresAt: String?
    public var createdAt: String?
    public var updatedAt: String?

    public init(id: Int, accountId: Int, name: String, key: String, lastUsedAt: String?, expiresAt: String?, createdAt: String? = nil, updatedAt: String? = nil) {
        self.id = id
        self.accountId = accountId
        self.name = name
        self.key = key
        self.lastUsedAt = lastUsedAt
        self.expiresAt = expiresAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case accountId
        case name
        case key
        case lastUsedAt
        case expiresAt
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(name, forKey: .name)
        try container.encode(key, forKey: .key)
        try container.encode(lastUsedAt, forKey: .lastUsedAt)
        try container.encode(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

