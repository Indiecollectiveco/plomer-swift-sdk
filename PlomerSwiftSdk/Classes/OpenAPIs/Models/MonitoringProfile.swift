//
// MonitoringProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** MonitoringProfile represents a website monitoring configuration with various health checks and thresholds */
public struct MonitoringProfile: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var accountId: Int
    public var registrarDataId: Int
    public var contentChangeDetection: Bool = false
    public var createdAt: String
    public var description: String
    public var domainExpiresAt: String
    public var domainExpiryCheck: Bool = false
    public var healthyThresholdCount: Double = 3
    public var httpStatusChecks: Bool = true
    public var iconUrl: String
    public var intervalSeconds: Double = 60
    public var isDomainExpired: Bool = false
    public var isSslValid: Bool = true
    public var isWebsiteReachable: Bool = true
    public var sslExpiresAt: String?
    public var sslExpiryCheck: Bool = false
    public var tags: [String]
    public var timeoutSeconds: Double = 30
    public var unhealthyThresholdCount: Double = 3
    public var updatedAt: String
    public var url: String

    public init(id: Int, accountId: Int, registrarDataId: Int, contentChangeDetection: Bool = false, createdAt: String, description: String, domainExpiresAt: String, domainExpiryCheck: Bool = false, healthyThresholdCount: Double = 3, httpStatusChecks: Bool = true, iconUrl: String, intervalSeconds: Double = 60, isDomainExpired: Bool = false, isSslValid: Bool = true, isWebsiteReachable: Bool = true, sslExpiresAt: String? = nil, sslExpiryCheck: Bool = false, tags: [String], timeoutSeconds: Double = 30, unhealthyThresholdCount: Double = 3, updatedAt: String, url: String) {
        self.id = id
        self.accountId = accountId
        self.registrarDataId = registrarDataId
        self.contentChangeDetection = contentChangeDetection
        self.createdAt = createdAt
        self.description = description
        self.domainExpiresAt = domainExpiresAt
        self.domainExpiryCheck = domainExpiryCheck
        self.healthyThresholdCount = healthyThresholdCount
        self.httpStatusChecks = httpStatusChecks
        self.iconUrl = iconUrl
        self.intervalSeconds = intervalSeconds
        self.isDomainExpired = isDomainExpired
        self.isSslValid = isSslValid
        self.isWebsiteReachable = isWebsiteReachable
        self.sslExpiresAt = sslExpiresAt
        self.sslExpiryCheck = sslExpiryCheck
        self.tags = tags
        self.timeoutSeconds = timeoutSeconds
        self.unhealthyThresholdCount = unhealthyThresholdCount
        self.updatedAt = updatedAt
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case accountId
        case registrarDataId
        case contentChangeDetection
        case createdAt
        case description
        case domainExpiresAt
        case domainExpiryCheck
        case healthyThresholdCount
        case httpStatusChecks
        case iconUrl
        case intervalSeconds
        case isDomainExpired
        case isSslValid
        case isWebsiteReachable
        case sslExpiresAt
        case sslExpiryCheck
        case tags
        case timeoutSeconds
        case unhealthyThresholdCount
        case updatedAt
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(registrarDataId, forKey: .registrarDataId)
        try container.encode(contentChangeDetection, forKey: .contentChangeDetection)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(description, forKey: .description)
        try container.encode(domainExpiresAt, forKey: .domainExpiresAt)
        try container.encode(domainExpiryCheck, forKey: .domainExpiryCheck)
        try container.encode(healthyThresholdCount, forKey: .healthyThresholdCount)
        try container.encode(httpStatusChecks, forKey: .httpStatusChecks)
        try container.encode(iconUrl, forKey: .iconUrl)
        try container.encode(intervalSeconds, forKey: .intervalSeconds)
        try container.encode(isDomainExpired, forKey: .isDomainExpired)
        try container.encode(isSslValid, forKey: .isSslValid)
        try container.encode(isWebsiteReachable, forKey: .isWebsiteReachable)
        try container.encodeIfPresent(sslExpiresAt, forKey: .sslExpiresAt)
        try container.encode(sslExpiryCheck, forKey: .sslExpiryCheck)
        try container.encode(tags, forKey: .tags)
        try container.encode(timeoutSeconds, forKey: .timeoutSeconds)
        try container.encode(unhealthyThresholdCount, forKey: .unhealthyThresholdCount)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(url, forKey: .url)
    }
}

