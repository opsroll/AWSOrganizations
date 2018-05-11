//
// PolicyTypeSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about a policy type and its status in the associated root. */

open class PolicyTypeSummary: Codable {

    /** The status of the policy type as it relates to the associated root. To attach a policy of the specified type to a root or to an OU or account in that root, it must be available in the organization and enabled for that root. */
    public var status: PolicyTypeStatus?
    /** The name of the policy type. */
    public var type: PolicyType?


    
    public init(status: PolicyTypeStatus?, type: PolicyType?) {
        self.status = status
        self.type = type
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(status, forKey: "Status")
        try container.encodeIfPresent(type, forKey: "Type")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        status = try container.decodeIfPresent(PolicyTypeStatus.self, forKey: "Status")
        type = try container.decodeIfPresent(PolicyType.self, forKey: "Type")
    }
}
