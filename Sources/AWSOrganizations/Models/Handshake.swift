//
// Handshake.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** &lt;p&gt;Contains information that must be exchanged to securely establish a relationship between two accounts (an &lt;i&gt;originator&lt;/i&gt; and a &lt;i&gt;recipient&lt;/i&gt;). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.&lt;/p&gt; */

open class Handshake: Codable {

    /** &lt;p&gt;The type of handshake, indicating what action occurs when the recipient accepts the handshake. The following handshake types are supported:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;INVITE&lt;/b&gt;: This type of handshake represents a request to join an organization. It is always sent from the master account to only non-member accounts.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ENABLE_ALL_FEATURES&lt;/b&gt;: This type of handshake represents a request to enable all features in an organization. It is always sent from the master account to only &lt;i&gt;invited&lt;/i&gt; member accounts. Created accounts do not receive this because those accounts were created by the organization&#39;s master account and approval is inferred.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;APPROVE_ALL_FEATURES&lt;/b&gt;: This type of handshake is sent from the Organizations service when all member accounts have approved the &lt;code&gt;ENABLE_ALL_FEATURES&lt;/code&gt; invitation. It is sent only to the master account and signals the master that it can finalize the process to enable all features.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; */
    public var action: ActionType?
    /** &lt;p&gt;The Amazon Resource Name (ARN) of a handshake.&lt;/p&gt; &lt;p&gt;For more information about ARNs in Organizations, see &lt;a href&#x3D;\&quot;http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\&quot;&gt;ARN Formats Supported by Organizations&lt;/a&gt; in the &lt;i&gt;AWS Organizations User Guide&lt;/i&gt;.&lt;/p&gt; */
    public var arn: HandshakeArn?
    /** The date and time that the handshake expires. If the recipient of the handshake request fails to respond before the specified date and time, the handshake becomes inactive and is no longer valid. */
    public var expirationTimestamp: Timestamp?
    /** &lt;p&gt;The unique identifier (ID) of a handshake. The originating account creates the ID when it initiates the handshake.&lt;/p&gt; &lt;p&gt;The &lt;a href&#x3D;\&quot;http://wikipedia.org/wiki/regex\&quot;&gt;regex pattern&lt;/a&gt; for handshake ID string requires \&quot;h-\&quot; followed by from 8 to 32 lower-case letters or digits.&lt;/p&gt; */
    public var id: HandshakeId?
    /** Information about the two accounts that are participating in the handshake. */
    public var parties: HandshakeParties?
    /** The date and time that the handshake request was made. */
    public var requestedTimestamp: Timestamp?
    /** Additional information that is needed to process the handshake. */
    public var resources: HandshakeResources?
    /** &lt;p&gt;The current state of the handshake. Use the state to trace the flow of the handshake through the process from its creation to its acceptance. The meaning of each of the valid values is as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;REQUESTED&lt;/b&gt;: This handshake was sent to multiple recipients (applicable to only some handshake types) and not all recipients have responded yet. The request stays in this state until all recipients respond.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;OPEN&lt;/b&gt;: This handshake was sent to multiple recipients (applicable to only some policy types) and all recipients have responded, allowing the originator to complete the handshake action.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CANCELED&lt;/b&gt;: This handshake is no longer active because it was canceled by the originating account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACCEPTED&lt;/b&gt;: This handshake is complete because it has been accepted by the recipient.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DECLINED&lt;/b&gt;: This handshake is no longer active because it was declined by the recipient account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EXPIRED&lt;/b&gt;: This handshake is no longer active because the originator did not receive a response of any kind from the recipient before the expiration time (15 days).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; */
    public var state: HandshakeState?


    
    public init(action: ActionType?, arn: HandshakeArn?, expirationTimestamp: Timestamp?, id: HandshakeId?, parties: HandshakeParties?, requestedTimestamp: Timestamp?, resources: HandshakeResources?, state: HandshakeState?) {
        self.action = action
        self.arn = arn
        self.expirationTimestamp = expirationTimestamp
        self.id = id
        self.parties = parties
        self.requestedTimestamp = requestedTimestamp
        self.resources = resources
        self.state = state
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(action, forKey: "Action")
        try container.encodeIfPresent(arn, forKey: "Arn")
        try container.encodeIfPresent(expirationTimestamp, forKey: "ExpirationTimestamp")
        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(parties, forKey: "Parties")
        try container.encodeIfPresent(requestedTimestamp, forKey: "RequestedTimestamp")
        try container.encodeIfPresent(resources, forKey: "Resources")
        try container.encodeIfPresent(state, forKey: "State")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        action = try container.decodeIfPresent(ActionType.self, forKey: "Action")
        arn = try container.decodeIfPresent(HandshakeArn.self, forKey: "Arn")
        expirationTimestamp = try container.decodeIfPresent(Timestamp.self, forKey: "ExpirationTimestamp")
        id = try container.decodeIfPresent(HandshakeId.self, forKey: "Id")
        parties = try container.decodeIfPresent(HandshakeParties.self, forKey: "Parties")
        requestedTimestamp = try container.decodeIfPresent(Timestamp.self, forKey: "RequestedTimestamp")
        resources = try container.decodeIfPresent(HandshakeResources.self, forKey: "Resources")
        state = try container.decodeIfPresent(HandshakeState.self, forKey: "State")
    }
}

