//
// TooManyRequestsException.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** You&#39;ve sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later. */

open class TooManyRequestsException: Codable {

    public var message: ExceptionMessage?
    public var type: ExceptionType?


    
    public init(message: ExceptionMessage?, type: ExceptionType?) {
        self.message = message
        self.type = type
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(message, forKey: "Message")
        try container.encodeIfPresent(type, forKey: "Type")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        message = try container.decodeIfPresent(ExceptionMessage.self, forKey: "Message")
        type = try container.decodeIfPresent(ExceptionType.self, forKey: "Type")
    }
}

