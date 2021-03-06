//
// CreateOrganizationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CreateOrganizationRequest: Codable {

    /** &lt;p&gt;Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;CONSOLIDATED_BILLING&lt;/i&gt;: All member accounts have their bills consolidated to and paid by the master account. For more information, see &lt;a href&#x3D;\&quot;http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only\&quot;&gt;Consolidated Billing&lt;/a&gt; in the &lt;i&gt;AWS Organizations User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;ALL&lt;/i&gt;: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any type of policy to any member account in the organization. For more information, see &lt;a href&#x3D;\&quot;http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all\&quot;&gt;All features&lt;/a&gt; in the &lt;i&gt;AWS Organizations User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; */
    public var featureSet: OrganizationFeatureSet?


    
    public init(featureSet: OrganizationFeatureSet?) {
        self.featureSet = featureSet
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(featureSet, forKey: "FeatureSet")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        featureSet = try container.decodeIfPresent(OrganizationFeatureSet.self, forKey: "FeatureSet")
    }
}

