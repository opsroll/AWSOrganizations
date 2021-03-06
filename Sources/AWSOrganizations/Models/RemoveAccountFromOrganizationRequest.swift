//
// RemoveAccountFromOrganizationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class RemoveAccountFromOrganizationRequest: Codable {

    /** &lt;p&gt;The unique identifier (ID) of the member account that you want to remove from the organization.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for an account ID string requires exactly 12 digits.&lt;/p&gt; */
    public var accountId: AccountId


    
    public init(accountId: AccountId) {
        self.accountId = accountId
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(accountId, forKey: "AccountId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        accountId = try container.decode(AccountId.self, forKey: "AccountId")
    }
}

