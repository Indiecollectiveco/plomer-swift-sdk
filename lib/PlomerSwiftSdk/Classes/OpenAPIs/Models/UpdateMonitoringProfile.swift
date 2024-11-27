//
// UpdateMonitoringProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input schema for updating a monitoring profile */
public struct UpdateMonitoringProfile: Codable, JSONEncodable, Hashable {

    public var url: String?
    public var httpStatusChecks: Bool? = true
    public var timeoutSeconds: Double? = 5
    public var intervalSeconds: Double? = 30
    public var healthyThresholdCount: Double? = 3
    public var unhealthyThresholdCount: Double? = 5
    public var domainExpiryCheck: Bool? = false
    public var sslExpiryCheck: Bool? = false
    public var contentChangeDetection: Bool? = false
    public var description: String?
    public var tags: [String]?

    public init(url: String? = nil, httpStatusChecks: Bool? = true, timeoutSeconds: Double? = 5, intervalSeconds: Double? = 30, healthyThresholdCount: Double? = 3, unhealthyThresholdCount: Double? = 5, domainExpiryCheck: Bool? = false, sslExpiryCheck: Bool? = false, contentChangeDetection: Bool? = false, description: String? = nil, tags: [String]? = nil) {
        self.url = url
        self.httpStatusChecks = httpStatusChecks
        self.timeoutSeconds = timeoutSeconds
        self.intervalSeconds = intervalSeconds
        self.healthyThresholdCount = healthyThresholdCount
        self.unhealthyThresholdCount = unhealthyThresholdCount
        self.domainExpiryCheck = domainExpiryCheck
        self.sslExpiryCheck = sslExpiryCheck
        self.contentChangeDetection = contentChangeDetection
        self.description = description
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case httpStatusChecks
        case timeoutSeconds
        case intervalSeconds
        case healthyThresholdCount
        case unhealthyThresholdCount
        case domainExpiryCheck
        case sslExpiryCheck
        case contentChangeDetection
        case description
        case tags
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(httpStatusChecks, forKey: .httpStatusChecks)
        try container.encodeIfPresent(timeoutSeconds, forKey: .timeoutSeconds)
        try container.encodeIfPresent(intervalSeconds, forKey: .intervalSeconds)
        try container.encodeIfPresent(healthyThresholdCount, forKey: .healthyThresholdCount)
        try container.encodeIfPresent(unhealthyThresholdCount, forKey: .unhealthyThresholdCount)
        try container.encodeIfPresent(domainExpiryCheck, forKey: .domainExpiryCheck)
        try container.encodeIfPresent(sslExpiryCheck, forKey: .sslExpiryCheck)
        try container.encodeIfPresent(contentChangeDetection, forKey: .contentChangeDetection)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(tags, forKey: .tags)
    }
}

