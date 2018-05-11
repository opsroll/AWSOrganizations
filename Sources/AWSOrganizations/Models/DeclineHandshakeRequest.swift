//
// DeclineHandshakeRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DeclineHandshakeRequest: Codable {

    /** &lt;p&gt;The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the &lt;a&gt;ListHandshakesForAccount&lt;/a&gt; operation.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for handshake ID string requires \&quot;h-\&quot; followed by from 8 to 32 lower-case letters or digits.&lt;/p&gt; */
    public var handshakeId: HandshakeId


    
    public init(handshakeId: HandshakeId) {
        self.handshakeId = handshakeId
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(handshakeId, forKey: "HandshakeId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        handshakeId = try container.decode(HandshakeId.self, forKey: "HandshakeId")
    }
}

