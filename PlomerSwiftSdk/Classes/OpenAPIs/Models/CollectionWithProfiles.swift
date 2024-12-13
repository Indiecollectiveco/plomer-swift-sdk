//
// CollectionWithProfiles.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Collection with its monitoring profiles */
public struct CollectionWithProfiles: Codable, JSONEncodable, Hashable {

    public var profiles: [MonitoringProfile]
    public var id: Int
    public var name: String
    public var description: String?
    public var accountId: Int
    public var createdAt: String
    public var updatedAt: String

    public init(profiles: [MonitoringProfile], id: Int, name: String, description: String?, accountId: Int, createdAt: String, updatedAt: String) {
        self.profiles = profiles
        self.id = id
        self.name = name
        self.description = description
        self.accountId = accountId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profiles
        case id
        case name
        case description
        case accountId
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(profiles, forKey: .profiles)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}
