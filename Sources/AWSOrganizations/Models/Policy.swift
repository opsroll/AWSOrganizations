//
// Policy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies. */

open class Policy: Codable {

    /** The text content of the policy. */
    public var content: PolicyContent?
    /** A structure that contains additional details about the policy. */
    public var policySummary: PolicySummary?


    
    public init(content: PolicyContent?, policySummary: PolicySummary?) {
        self.content = content
        self.policySummary = policySummary
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(content, forKey: "Content")
        try container.encodeIfPresent(policySummary, forKey: "PolicySummary")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        content = try container.decodeIfPresent(PolicyContent.self, forKey: "Content")
        policySummary = try container.decodeIfPresent(PolicySummary.self, forKey: "PolicySummary")
    }
}

