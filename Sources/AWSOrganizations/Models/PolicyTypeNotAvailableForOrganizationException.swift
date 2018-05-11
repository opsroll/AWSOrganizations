//
// PolicyTypeNotAvailableForOrganizationException.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** You can&#39;t use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see &lt;a href&#x3D;\&quot;http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root\&quot;&gt;Enabling and Disabling a Policy Type on a Root&lt;/a&gt; in the &lt;i&gt;AWS Organizations User Guide&lt;/i&gt;. */

open class PolicyTypeNotAvailableForOrganizationException: Codable {

    public var message: ExceptionMessage?


    
    public init(message: ExceptionMessage?) {
        self.message = message
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(message, forKey: "Message")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        message = try container.decodeIfPresent(ExceptionMessage.self, forKey: "Message")
    }
}

