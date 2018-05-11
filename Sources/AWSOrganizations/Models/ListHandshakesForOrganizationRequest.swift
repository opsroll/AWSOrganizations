//
// ListHandshakesForOrganizationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ListHandshakesForOrganizationRequest: Codable {

    /** A filter of the handshakes that you want included in the response. The default is all types. Use the &lt;code&gt;ActionType&lt;/code&gt; element to limit the output to only a specified type, such as &lt;code&gt;INVITE&lt;/code&gt;, &lt;code&gt;ENABLE-ALL-FEATURES&lt;/code&gt;, or &lt;code&gt;APPROVE-ALL-FEATURES&lt;/code&gt;. Alternatively, for the &lt;code&gt;ENABLE-ALL-FEATURES&lt;/code&gt; handshake that generates a separate child handshake for each member account, you can specify the &lt;code&gt;ParentHandshakeId&lt;/code&gt; to see only the handshakes that were generated by that parent request. */
    public var filter: HandshakeFilter?
    /** (Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the &lt;code&gt;NextToken&lt;/code&gt; response element is present and has a value (is not null). Include that value as the &lt;code&gt;NextToken&lt;/code&gt; request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check &lt;code&gt;NextToken&lt;/code&gt; after every operation to ensure that you receive all of the results. */
    public var maxResults: MaxResults?
    /** Use this parameter if you receive a &lt;code&gt;NextToken&lt;/code&gt; response in a previous request that indicates that there is more output available. Set it to the value of the previous call&#39;s &lt;code&gt;NextToken&lt;/code&gt; response to indicate where the output should continue from. */
    public var nextToken: NextToken?


    
    public init(filter: HandshakeFilter?, maxResults: MaxResults?, nextToken: NextToken?) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(filter, forKey: "Filter")
        try container.encodeIfPresent(maxResults, forKey: "MaxResults")
        try container.encodeIfPresent(nextToken, forKey: "NextToken")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        filter = try container.decodeIfPresent(HandshakeFilter.self, forKey: "Filter")
        maxResults = try container.decodeIfPresent(MaxResults.self, forKey: "MaxResults")
        nextToken = try container.decodeIfPresent(NextToken.self, forKey: "NextToken")
    }
}

