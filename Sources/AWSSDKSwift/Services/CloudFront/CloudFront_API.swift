// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon CloudFront This is the Amazon CloudFront API Reference. This guide is for developers who need detailed information about CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the Amazon CloudFront Developer Guide.
*/
public struct CloudFront {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "cloudfront",
            serviceProtocol: ServiceProtocol(type: .restxml),
            apiVersion: "2018-11-05",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "cloudfront.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: [],
            possibleErrorTypes: [CloudFrontErrorType.self]
        )
    }

    public func createPublicKey20181105(_ input: CreatePublicKeyRequest) throws -> CreatePublicKeyResult {
        return try client.send(operation: "CreatePublicKey2018_11_05", path: "/2018-11-05/public-key", httpMethod: "POST", input: input)
    }

    public func untagResource20181105(_ input: UntagResourceRequest) throws {
        _ = try client.send(operation: "UntagResource2018_11_05", path: "/2018-11-05/tagging?Operation=Untag", httpMethod: "POST", input: input)
    }

    public func listDistributions20181105(_ input: ListDistributionsRequest) throws -> ListDistributionsResult {
        return try client.send(operation: "ListDistributions2018_11_05", path: "/2018-11-05/distribution", httpMethod: "GET", input: input)
    }

    public func listStreamingDistributions20181105(_ input: ListStreamingDistributionsRequest) throws -> ListStreamingDistributionsResult {
        return try client.send(operation: "ListStreamingDistributions2018_11_05", path: "/2018-11-05/streaming-distribution", httpMethod: "GET", input: input)
    }

    public func getCloudFrontOriginAccessIdentity20181105(_ input: GetCloudFrontOriginAccessIdentityRequest) throws -> GetCloudFrontOriginAccessIdentityResult {
        return try client.send(operation: "GetCloudFrontOriginAccessIdentity2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront/{Id}", httpMethod: "GET", input: input)
    }

    public func updateFieldLevelEncryptionProfile20181105(_ input: UpdateFieldLevelEncryptionProfileRequest) throws -> UpdateFieldLevelEncryptionProfileResult {
        return try client.send(operation: "UpdateFieldLevelEncryptionProfile2018_11_05", path: "/2018-11-05/field-level-encryption-profile/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func updateCloudFrontOriginAccessIdentity20181105(_ input: UpdateCloudFrontOriginAccessIdentityRequest) throws -> UpdateCloudFrontOriginAccessIdentityResult {
        return try client.send(operation: "UpdateCloudFrontOriginAccessIdentity2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func updateDistribution20181105(_ input: UpdateDistributionRequest) throws -> UpdateDistributionResult {
        return try client.send(operation: "UpdateDistribution2018_11_05", path: "/2018-11-05/distribution/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func deletePublicKey20181105(_ input: DeletePublicKeyRequest) throws {
        _ = try client.send(operation: "DeletePublicKey2018_11_05", path: "/2018-11-05/public-key/{Id}", httpMethod: "DELETE", input: input)
    }

    public func updateFieldLevelEncryptionConfig20181105(_ input: UpdateFieldLevelEncryptionConfigRequest) throws -> UpdateFieldLevelEncryptionConfigResult {
        return try client.send(operation: "UpdateFieldLevelEncryptionConfig2018_11_05", path: "/2018-11-05/field-level-encryption/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func createDistributionWithTags20181105(_ input: CreateDistributionWithTagsRequest) throws -> CreateDistributionWithTagsResult {
        return try client.send(operation: "CreateDistributionWithTags2018_11_05", path: "/2018-11-05/distribution?WithTags", httpMethod: "POST", input: input)
    }

    public func getPublicKeyConfig20181105(_ input: GetPublicKeyConfigRequest) throws -> GetPublicKeyConfigResult {
        return try client.send(operation: "GetPublicKeyConfig2018_11_05", path: "/2018-11-05/public-key/{Id}/config", httpMethod: "GET", input: input)
    }

    public func getFieldLevelEncryption20181105(_ input: GetFieldLevelEncryptionRequest) throws -> GetFieldLevelEncryptionResult {
        return try client.send(operation: "GetFieldLevelEncryption2018_11_05", path: "/2018-11-05/field-level-encryption/{Id}", httpMethod: "GET", input: input)
    }

    public func tagResource20181105(_ input: TagResourceRequest) throws {
        _ = try client.send(operation: "TagResource2018_11_05", path: "/2018-11-05/tagging?Operation=Tag", httpMethod: "POST", input: input)
    }

    public func createStreamingDistribution20181105(_ input: CreateStreamingDistributionRequest) throws -> CreateStreamingDistributionResult {
        return try client.send(operation: "CreateStreamingDistribution2018_11_05", path: "/2018-11-05/streaming-distribution", httpMethod: "POST", input: input)
    }

    public func getFieldLevelEncryptionProfileConfig20181105(_ input: GetFieldLevelEncryptionProfileConfigRequest) throws -> GetFieldLevelEncryptionProfileConfigResult {
        return try client.send(operation: "GetFieldLevelEncryptionProfileConfig2018_11_05", path: "/2018-11-05/field-level-encryption-profile/{Id}/config", httpMethod: "GET", input: input)
    }

    public func deleteFieldLevelEncryptionConfig20181105(_ input: DeleteFieldLevelEncryptionConfigRequest) throws {
        _ = try client.send(operation: "DeleteFieldLevelEncryptionConfig2018_11_05", path: "/2018-11-05/field-level-encryption/{Id}", httpMethod: "DELETE", input: input)
    }

    public func getPublicKey20181105(_ input: GetPublicKeyRequest) throws -> GetPublicKeyResult {
        return try client.send(operation: "GetPublicKey2018_11_05", path: "/2018-11-05/public-key/{Id}", httpMethod: "GET", input: input)
    }

    public func createFieldLevelEncryptionProfile20181105(_ input: CreateFieldLevelEncryptionProfileRequest) throws -> CreateFieldLevelEncryptionProfileResult {
        return try client.send(operation: "CreateFieldLevelEncryptionProfile2018_11_05", path: "/2018-11-05/field-level-encryption-profile", httpMethod: "POST", input: input)
    }

    public func listPublicKeys20181105(_ input: ListPublicKeysRequest) throws -> ListPublicKeysResult {
        return try client.send(operation: "ListPublicKeys2018_11_05", path: "/2018-11-05/public-key", httpMethod: "GET", input: input)
    }

    public func listInvalidations20181105(_ input: ListInvalidationsRequest) throws -> ListInvalidationsResult {
        return try client.send(operation: "ListInvalidations2018_11_05", path: "/2018-11-05/distribution/{DistributionId}/invalidation", httpMethod: "GET", input: input)
    }

    public func deleteDistribution20181105(_ input: DeleteDistributionRequest) throws {
        _ = try client.send(operation: "DeleteDistribution2018_11_05", path: "/2018-11-05/distribution/{Id}", httpMethod: "DELETE", input: input)
    }

    public func getFieldLevelEncryptionProfile20181105(_ input: GetFieldLevelEncryptionProfileRequest) throws -> GetFieldLevelEncryptionProfileResult {
        return try client.send(operation: "GetFieldLevelEncryptionProfile2018_11_05", path: "/2018-11-05/field-level-encryption-profile/{Id}", httpMethod: "GET", input: input)
    }

    public func getDistributionConfig20181105(_ input: GetDistributionConfigRequest) throws -> GetDistributionConfigResult {
        return try client.send(operation: "GetDistributionConfig2018_11_05", path: "/2018-11-05/distribution/{Id}/config", httpMethod: "GET", input: input)
    }

    public func updatePublicKey20181105(_ input: UpdatePublicKeyRequest) throws -> UpdatePublicKeyResult {
        return try client.send(operation: "UpdatePublicKey2018_11_05", path: "/2018-11-05/public-key/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func getInvalidation20181105(_ input: GetInvalidationRequest) throws -> GetInvalidationResult {
        return try client.send(operation: "GetInvalidation2018_11_05", path: "/2018-11-05/distribution/{DistributionId}/invalidation/{Id}", httpMethod: "GET", input: input)
    }

    public func deleteCloudFrontOriginAccessIdentity20181105(_ input: DeleteCloudFrontOriginAccessIdentityRequest) throws {
        _ = try client.send(operation: "DeleteCloudFrontOriginAccessIdentity2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront/{Id}", httpMethod: "DELETE", input: input)
    }

    public func createInvalidation20181105(_ input: CreateInvalidationRequest) throws -> CreateInvalidationResult {
        return try client.send(operation: "CreateInvalidation2018_11_05", path: "/2018-11-05/distribution/{DistributionId}/invalidation", httpMethod: "POST", input: input)
    }

    public func createDistribution20181105(_ input: CreateDistributionRequest) throws -> CreateDistributionResult {
        return try client.send(operation: "CreateDistribution2018_11_05", path: "/2018-11-05/distribution", httpMethod: "POST", input: input)
    }

    public func listDistributionsByWebACLId20181105(_ input: ListDistributionsByWebACLIdRequest) throws -> ListDistributionsByWebACLIdResult {
        return try client.send(operation: "ListDistributionsByWebACLId2018_11_05", path: "/2018-11-05/distributionsByWebACLId/{WebACLId}", httpMethod: "GET", input: input)
    }

    public func listCloudFrontOriginAccessIdentities20181105(_ input: ListCloudFrontOriginAccessIdentitiesRequest) throws -> ListCloudFrontOriginAccessIdentitiesResult {
        return try client.send(operation: "ListCloudFrontOriginAccessIdentities2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront", httpMethod: "GET", input: input)
    }

    public func deleteStreamingDistribution20181105(_ input: DeleteStreamingDistributionRequest) throws {
        _ = try client.send(operation: "DeleteStreamingDistribution2018_11_05", path: "/2018-11-05/streaming-distribution/{Id}", httpMethod: "DELETE", input: input)
    }

    public func listFieldLevelEncryptionConfigs20181105(_ input: ListFieldLevelEncryptionConfigsRequest) throws -> ListFieldLevelEncryptionConfigsResult {
        return try client.send(operation: "ListFieldLevelEncryptionConfigs2018_11_05", path: "/2018-11-05/field-level-encryption", httpMethod: "GET", input: input)
    }

    public func getCloudFrontOriginAccessIdentityConfig20181105(_ input: GetCloudFrontOriginAccessIdentityConfigRequest) throws -> GetCloudFrontOriginAccessIdentityConfigResult {
        return try client.send(operation: "GetCloudFrontOriginAccessIdentityConfig2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront/{Id}/config", httpMethod: "GET", input: input)
    }

    public func createStreamingDistributionWithTags20181105(_ input: CreateStreamingDistributionWithTagsRequest) throws -> CreateStreamingDistributionWithTagsResult {
        return try client.send(operation: "CreateStreamingDistributionWithTags2018_11_05", path: "/2018-11-05/streaming-distribution?WithTags", httpMethod: "POST", input: input)
    }

    public func listFieldLevelEncryptionProfiles20181105(_ input: ListFieldLevelEncryptionProfilesRequest) throws -> ListFieldLevelEncryptionProfilesResult {
        return try client.send(operation: "ListFieldLevelEncryptionProfiles2018_11_05", path: "/2018-11-05/field-level-encryption-profile", httpMethod: "GET", input: input)
    }

    public func deleteFieldLevelEncryptionProfile20181105(_ input: DeleteFieldLevelEncryptionProfileRequest) throws {
        _ = try client.send(operation: "DeleteFieldLevelEncryptionProfile2018_11_05", path: "/2018-11-05/field-level-encryption-profile/{Id}", httpMethod: "DELETE", input: input)
    }

    public func createCloudFrontOriginAccessIdentity20181105(_ input: CreateCloudFrontOriginAccessIdentityRequest) throws -> CreateCloudFrontOriginAccessIdentityResult {
        return try client.send(operation: "CreateCloudFrontOriginAccessIdentity2018_11_05", path: "/2018-11-05/origin-access-identity/cloudfront", httpMethod: "POST", input: input)
    }

    public func getFieldLevelEncryptionConfig20181105(_ input: GetFieldLevelEncryptionConfigRequest) throws -> GetFieldLevelEncryptionConfigResult {
        return try client.send(operation: "GetFieldLevelEncryptionConfig2018_11_05", path: "/2018-11-05/field-level-encryption/{Id}/config", httpMethod: "GET", input: input)
    }

    public func createFieldLevelEncryptionConfig20181105(_ input: CreateFieldLevelEncryptionConfigRequest) throws -> CreateFieldLevelEncryptionConfigResult {
        return try client.send(operation: "CreateFieldLevelEncryptionConfig2018_11_05", path: "/2018-11-05/field-level-encryption", httpMethod: "POST", input: input)
    }

    public func getStreamingDistribution20181105(_ input: GetStreamingDistributionRequest) throws -> GetStreamingDistributionResult {
        return try client.send(operation: "GetStreamingDistribution2018_11_05", path: "/2018-11-05/streaming-distribution/{Id}", httpMethod: "GET", input: input)
    }

    public func getDistribution20181105(_ input: GetDistributionRequest) throws -> GetDistributionResult {
        return try client.send(operation: "GetDistribution2018_11_05", path: "/2018-11-05/distribution/{Id}", httpMethod: "GET", input: input)
    }

    public func updateStreamingDistribution20181105(_ input: UpdateStreamingDistributionRequest) throws -> UpdateStreamingDistributionResult {
        return try client.send(operation: "UpdateStreamingDistribution2018_11_05", path: "/2018-11-05/streaming-distribution/{Id}/config", httpMethod: "PUT", input: input)
    }

    public func getStreamingDistributionConfig20181105(_ input: GetStreamingDistributionConfigRequest) throws -> GetStreamingDistributionConfigResult {
        return try client.send(operation: "GetStreamingDistributionConfig2018_11_05", path: "/2018-11-05/streaming-distribution/{Id}/config", httpMethod: "GET", input: input)
    }

    public func listTagsForResource20181105(_ input: ListTagsForResourceRequest) throws -> ListTagsForResourceResult {
        return try client.send(operation: "ListTagsForResource2018_11_05", path: "/2018-11-05/tagging", httpMethod: "GET", input: input)
    }


}