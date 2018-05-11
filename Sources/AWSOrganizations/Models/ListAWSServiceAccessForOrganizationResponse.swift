//
// ListAWSServiceAccessForOrganizationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ListAWSServiceAccessForOrganizationResponse: Codable {

    /** A list of the service principals for the services that are enabled to integrate with your organization. Each principal is a structure that includes the name and the date that it was enabled for integration with AWS Organizations. */
    public var enabledServicePrincipals: EnabledServicePrincipals?
    /** If present, this value indicates that there is more output available than is included in the current response. Use this value in the &lt;code&gt;NextToken&lt;/code&gt; request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the &lt;code&gt;NextToken&lt;/code&gt; response element comes back as &lt;code&gt;null&lt;/code&gt;. */
    public var nextToken: NextToken?


    
    public init(enabledServicePrincipals: EnabledServicePrincipals?, nextToken: NextToken?) {
        self.enabledServicePrincipals = enabledServicePrincipals
        self.nextToken = nextToken
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(enabledServicePrincipals, forKey: "EnabledServicePrincipals")
        try container.encodeIfPresent(nextToken, forKey: "NextToken")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        enabledServicePrincipals = try container.decodeIfPresent(EnabledServicePrincipals.self, forKey: "EnabledServicePrincipals")
        nextToken = try container.decodeIfPresent(NextToken.self, forKey: "NextToken")
    }
}
