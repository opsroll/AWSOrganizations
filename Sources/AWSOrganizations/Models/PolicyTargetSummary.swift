//
// PolicyTargetSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about a root, OU, or account that a policy is attached to. */

open class PolicyTargetSummary: Codable {

    /** &lt;p&gt;The Amazon Resource Name (ARN) of the policy target.&lt;/p&gt; &lt;p&gt;For more information about ARNs in Organizations, see &lt;a href&#x3D;\&quot;http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\&quot;&gt;ARN Formats Supported by Organizations&lt;/a&gt; in the &lt;i&gt;AWS Organizations User Guide&lt;/i&gt;.&lt;/p&gt; */
    public var arn: GenericArn?
    /** &lt;p&gt;The friendly name of the policy target.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; that is used to validate this parameter is a string of any of the characters in the ASCII character range.&lt;/p&gt; */
    public var name: TargetName?
    /** &lt;p&gt;The unique identifier (ID) of the policy target.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for a target ID string requires one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Root: a string that begins with \&quot;r-\&quot; followed by from 4 to 32 lower-case letters or digits.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Account: a string that consists of exactly 12 digits.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Organizational unit (OU): a string that begins with \&quot;ou-\&quot; followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second \&quot;-\&quot; dash and from 8 to 32 additional lower-case letters or digits.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; */
    public var targetId: PolicyTargetId?
    /** The type of the policy target. */
    public var type: TargetType?


    
    public init(arn: GenericArn?, name: TargetName?, targetId: PolicyTargetId?, type: TargetType?) {
        self.arn = arn
        self.name = name
        self.targetId = targetId
        self.type = type
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(arn, forKey: "Arn")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(targetId, forKey: "TargetId")
        try container.encodeIfPresent(type, forKey: "Type")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        arn = try container.decodeIfPresent(GenericArn.self, forKey: "Arn")
        name = try container.decodeIfPresent(TargetName.self, forKey: "Name")
        targetId = try container.decodeIfPresent(PolicyTargetId.self, forKey: "TargetId")
        type = try container.decodeIfPresent(TargetType.self, forKey: "Type")
    }
}

