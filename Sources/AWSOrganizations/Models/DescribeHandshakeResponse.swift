//
// DescribeHandshakeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DescribeHandshakeResponse: Codable {

    /** A structure that contains information about the specified handshake. */
    public var handshake: Handshake?


    
    public init(handshake: Handshake?) {
        self.handshake = handshake
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(handshake, forKey: "Handshake")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        handshake = try container.decodeIfPresent(Handshake.self, forKey: "Handshake")
    }
}
