//
// TargetNotFoundException.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** We can&#39;t find a root, OU, or account with the TargetId that you specified. */

open class TargetNotFoundException: Codable {

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

