//
// DisablePolicyTypeRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DisablePolicyTypeRequest: Codable {

    /** The policy type that you want to disable in this root. */
    public var policyType: PolicyType
    /** &lt;p&gt;The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the &lt;a&gt;ListRoots&lt;/a&gt; operation.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for a root ID string requires \&quot;r-\&quot; followed by from 4 to 32 lower-case letters or digits.&lt;/p&gt; */
    public var rootId: RootId


    
    public init(policyType: PolicyType, rootId: RootId) {
        self.policyType = policyType
        self.rootId = rootId
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(policyType, forKey: "PolicyType")
        try container.encode(rootId, forKey: "RootId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        policyType = try container.decode(PolicyType.self, forKey: "PolicyType")
        rootId = try container.decode(RootId.self, forKey: "RootId")
    }
}

