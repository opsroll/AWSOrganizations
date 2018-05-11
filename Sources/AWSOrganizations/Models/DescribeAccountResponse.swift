//
// DescribeAccountResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DescribeAccountResponse: Codable {

    /** A structure that contains information about the requested account. */
    public var account: Account?


    
    public init(account: Account?) {
        self.account = account
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(account, forKey: "Account")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        account = try container.decodeIfPresent(Account.self, forKey: "Account")
    }
}
