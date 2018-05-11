//
// AttachPolicyRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AttachPolicyRequest: Codable {

    /** &lt;p&gt;The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the &lt;a&gt;ListPolicies&lt;/a&gt; operation.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for a policy ID string requires \&quot;p-\&quot; followed by from 8 to 128 lower-case letters or digits.&lt;/p&gt; */
    public var policyId: PolicyId
    /** &lt;p&gt;The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the &lt;a&gt;ListRoots&lt;/a&gt;, &lt;a&gt;ListOrganizationalUnitsForParent&lt;/a&gt;, or &lt;a&gt;ListAccounts&lt;/a&gt; operations.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for a target ID string requires one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Root: a string that begins with \&quot;r-\&quot; followed by from 4 to 32 lower-case letters or digits.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Account: a string that consists of exactly 12 digits.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Organizational unit (OU): a string that begins with \&quot;ou-\&quot; followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second \&quot;-\&quot; dash and from 8 to 32 additional lower-case letters or digits.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; */
    public var targetId: PolicyTargetId


    
    public init(policyId: PolicyId, targetId: PolicyTargetId) {
        self.policyId = policyId
        self.targetId = targetId
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(policyId, forKey: "PolicyId")
        try container.encode(targetId, forKey: "TargetId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        policyId = try container.decode(PolicyId.self, forKey: "PolicyId")
        targetId = try container.decode(PolicyTargetId.self, forKey: "TargetId")
    }
}
