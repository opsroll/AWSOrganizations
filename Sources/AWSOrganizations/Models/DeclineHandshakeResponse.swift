//
// DeclineHandshakeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DeclineHandshakeResponse: Codable {

    /** A structure that contains details about the declined handshake. The state is updated to show the value &lt;code&gt;DECLINED&lt;/code&gt;. */
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

