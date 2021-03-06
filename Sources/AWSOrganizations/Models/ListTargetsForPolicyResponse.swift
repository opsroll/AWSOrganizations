//
// ListTargetsForPolicyResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ListTargetsForPolicyResponse: Codable {

    /** If present, this value indicates that there is more output available than is included in the current response. Use this value in the &lt;code&gt;NextToken&lt;/code&gt; request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the &lt;code&gt;NextToken&lt;/code&gt; response element comes back as &lt;code&gt;null&lt;/code&gt;. */
    public var nextToken: NextToken?
    /** A list of structures, each of which contains details about one of the entities to which the specified policy is attached. */
    public var targets: PolicyTargets?


    
    public init(nextToken: NextToken?, targets: PolicyTargets?) {
        self.nextToken = nextToken
        self.targets = targets
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(nextToken, forKey: "NextToken")
        try container.encodeIfPresent(targets, forKey: "Targets")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        nextToken = try container.decodeIfPresent(NextToken.self, forKey: "NextToken")
        targets = try container.decodeIfPresent(PolicyTargets.self, forKey: "Targets")
    }
}

