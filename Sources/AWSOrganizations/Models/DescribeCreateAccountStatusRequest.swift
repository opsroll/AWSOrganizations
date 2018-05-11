//
// DescribeCreateAccountStatusRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DescribeCreateAccountStatusRequest: Codable {

    /** &lt;p&gt;Specifies the &lt;code&gt;operationId&lt;/code&gt; that uniquely identifies the request. You can get the ID from the response to an earlier &lt;a&gt;CreateAccount&lt;/a&gt; request, or from the &lt;a&gt;ListCreateAccountStatus&lt;/a&gt; operation.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for an create account request ID string requires \&quot;car-\&quot; followed by from 8 to 32 lower-case letters or digits.&lt;/p&gt; */
    public var createAccountRequestId: CreateAccountRequestId


    
    public init(createAccountRequestId: CreateAccountRequestId) {
        self.createAccountRequestId = createAccountRequestId
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(createAccountRequestId, forKey: "CreateAccountRequestId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        createAccountRequestId = try container.decode(CreateAccountRequestId.self, forKey: "CreateAccountRequestId")
    }
}

