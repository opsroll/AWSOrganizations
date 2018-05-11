//
// CreateOrganizationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CreateOrganizationResponse: Codable {

    /** A structure that contains details about the newly created organization. */
    public var organization: Organization?


    
    public init(organization: Organization?) {
        self.organization = organization
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(organization, forKey: "Organization")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        organization = try container.decodeIfPresent(Organization.self, forKey: "Organization")
    }
}

