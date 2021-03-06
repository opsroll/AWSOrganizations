//
// UpdateOrganizationalUnitResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class UpdateOrganizationalUnitResponse: Codable {

    /** A structure that contains the details about the specified OU, including its new name. */
    public var organizationalUnit: OrganizationalUnit?


    
    public init(organizationalUnit: OrganizationalUnit?) {
        self.organizationalUnit = organizationalUnit
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(organizationalUnit, forKey: "OrganizationalUnit")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        organizationalUnit = try container.decodeIfPresent(OrganizationalUnit.self, forKey: "OrganizationalUnit")
    }
}

