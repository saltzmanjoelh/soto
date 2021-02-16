//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS ECR service.
///
/// Amazon Elastic Container Registry Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR supports private repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images.
public struct ECR: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ECR client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AmazonEC2ContainerRegistry_V20150921",
            service: "api.ecr",
            signingName: "ecr",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-09-21",
            endpoint: endpoint,
            serviceEndpoints: ["af-south-1": "api.ecr.af-south-1.amazonaws.com", "ap-east-1": "api.ecr.ap-east-1.amazonaws.com", "ap-northeast-1": "api.ecr.ap-northeast-1.amazonaws.com", "ap-northeast-2": "api.ecr.ap-northeast-2.amazonaws.com", "ap-south-1": "api.ecr.ap-south-1.amazonaws.com", "ap-southeast-1": "api.ecr.ap-southeast-1.amazonaws.com", "ap-southeast-2": "api.ecr.ap-southeast-2.amazonaws.com", "ca-central-1": "api.ecr.ca-central-1.amazonaws.com", "cn-north-1": "api.ecr.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "api.ecr.cn-northwest-1.amazonaws.com.cn", "eu-central-1": "api.ecr.eu-central-1.amazonaws.com", "eu-north-1": "api.ecr.eu-north-1.amazonaws.com", "eu-south-1": "api.ecr.eu-south-1.amazonaws.com", "eu-west-1": "api.ecr.eu-west-1.amazonaws.com", "eu-west-2": "api.ecr.eu-west-2.amazonaws.com", "eu-west-3": "api.ecr.eu-west-3.amazonaws.com", "me-south-1": "api.ecr.me-south-1.amazonaws.com", "sa-east-1": "api.ecr.sa-east-1.amazonaws.com", "us-east-1": "api.ecr.us-east-1.amazonaws.com", "us-east-2": "api.ecr.us-east-2.amazonaws.com", "us-gov-east-1": "api.ecr.us-gov-east-1.amazonaws.com", "us-gov-west-1": "api.ecr.us-gov-west-1.amazonaws.com", "us-iso-east-1": "api.ecr.us-iso-east-1.c2s.ic.gov", "us-isob-east-1": "api.ecr.us-isob-east-1.sc2s.sgov.gov", "us-west-1": "api.ecr.us-west-1.amazonaws.com", "us-west-2": "api.ecr.us-west-2.amazonaws.com"],
            errorType: ECRErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Checks the availability of one or more image layers in a repository. When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCheckLayerAvailabilityResponse> {
        return self.client.execute(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchCheckLayerAvailabilityResponse {
        return try await self.client.execute(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a list of specified images within a repository. Images are specified with either an imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    public func batchDeleteImage(_ input: BatchDeleteImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteImageResponse> {
        return self.client.execute(operation: "BatchDeleteImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func batchDeleteImage(_ input: BatchDeleteImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteImageResponse {
        return try await self.client.execute(operation: "BatchDeleteImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information for an image. Images are specified with either an imageTag or imageDigest. When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.
    public func batchGetImage(_ input: BatchGetImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetImageResponse> {
        return self.client.execute(operation: "BatchGetImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func batchGetImage(_ input: BatchGetImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetImageResponse {
        return try await self.client.execute(operation: "BatchGetImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes. When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteLayerUploadResponse> {
        return self.client.execute(operation: "CompleteLayerUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func completeLayerUpload(_ input: CompleteLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteLayerUploadResponse {
        return try await self.client.execute(operation: "CompleteLayerUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a repository. For more information, see Amazon ECR Repositories in the Amazon Elastic Container Registry User Guide.
    public func createRepository(_ input: CreateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRepositoryResponse> {
        return self.client.execute(operation: "CreateRepository", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func createRepository(_ input: CreateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRepositoryResponse {
        return try await self.client.execute(operation: "CreateRepository", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the lifecycle policy associated with the specified repository.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecyclePolicyResponse> {
        return self.client.execute(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifecyclePolicyResponse {
        return try await self.client.execute(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the registry permissions policy.
    public func deleteRegistryPolicy(_ input: DeleteRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRegistryPolicyResponse> {
        return self.client.execute(operation: "DeleteRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteRegistryPolicy(_ input: DeleteRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRegistryPolicyResponse {
        return try await self.client.execute(operation: "DeleteRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the force option to delete the repository.
    public func deleteRepository(_ input: DeleteRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryResponse> {
        return self.client.execute(operation: "DeleteRepository", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteRepository(_ input: DeleteRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRepositoryResponse {
        return try await self.client.execute(operation: "DeleteRepository", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the repository policy associated with the specified repository.
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryPolicyResponse> {
        return self.client.execute(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRepositoryPolicyResponse {
        return try await self.client.execute(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the scan findings for the specified image.
    public func describeImageScanFindings(_ input: DescribeImageScanFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageScanFindingsResponse> {
        return self.client.execute(operation: "DescribeImageScanFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func describeImageScanFindings(_ input: DescribeImageScanFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageScanFindingsResponse {
        return try await self.client.execute(operation: "DescribeImageScanFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about the images in a repository.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages.
    public func describeImages(_ input: DescribeImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        return self.client.execute(operation: "DescribeImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func describeImages(_ input: DescribeImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        return try await self.client.execute(operation: "DescribeImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the settings for a registry. The replication configuration for a repository can be created or updated with the PutReplicationConfiguration API action.
    public func describeRegistry(_ input: DescribeRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistryResponse> {
        return self.client.execute(operation: "DescribeRegistry", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func describeRegistry(_ input: DescribeRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegistryResponse {
        return try await self.client.execute(operation: "DescribeRegistry", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes image repositories in a registry.
    public func describeRepositories(_ input: DescribeRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        return self.client.execute(operation: "DescribeRepositories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func describeRepositories(_ input: DescribeRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        return try await self.client.execute(operation: "DescribeRepositories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an authorization token. An authorization token represents your IAM authentication credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. The authorizationToken returned is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an get-login-password command that simplifies the login process. For more information, see Registry Authentication in the Amazon Elastic Container Registry User Guide.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorizationTokenResponse> {
        return self.client.execute(operation: "GetAuthorizationToken", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorizationTokenResponse {
        return try await self.client.execute(operation: "GetAuthorizationToken", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image. When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer that is not already cached.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDownloadUrlForLayerResponse> {
        return self.client.execute(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDownloadUrlForLayerResponse {
        return try await self.client.execute(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the lifecycle policy for the specified repository.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePolicyResponse> {
        return self.client.execute(operation: "GetLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLifecyclePolicyResponse {
        return try await self.client.execute(operation: "GetLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the results of the lifecycle policy preview request for the specified repository.
    public func getLifecyclePolicyPreview(_ input: GetLifecyclePolicyPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePolicyPreviewResponse> {
        return self.client.execute(operation: "GetLifecyclePolicyPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getLifecyclePolicyPreview(_ input: GetLifecyclePolicyPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLifecyclePolicyPreviewResponse {
        return try await self.client.execute(operation: "GetLifecyclePolicyPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the permissions policy for a registry.
    public func getRegistryPolicy(_ input: GetRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRegistryPolicyResponse> {
        return self.client.execute(operation: "GetRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getRegistryPolicy(_ input: GetRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRegistryPolicyResponse {
        return try await self.client.execute(operation: "GetRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the repository policy for the specified repository.
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRepositoryPolicyResponse> {
        return self.client.execute(operation: "GetRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRepositoryPolicyResponse {
        return try await self.client.execute(operation: "GetRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Notifies Amazon ECR that you intend to upload an image layer. When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether or not an image layer has been uploaded is determined by the BatchCheckLayerAvailability API action.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateLayerUploadResponse> {
        return self.client.execute(operation: "InitiateLayerUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitiateLayerUploadResponse {
        return try await self.client.execute(operation: "InitiateLayerUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the image IDs for the specified repository. You can filter images based on whether or not they are tagged by using the tagStatus filter and specifying either TAGGED, UNTAGGED or ANY. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImages(_ input: ListImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImagesResponse> {
        return self.client.execute(operation: "ListImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listImages(_ input: ListImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImagesResponse {
        return try await self.client.execute(operation: "ListImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags for an Amazon ECR resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the image manifest and tags associated with an image. When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags associated with the image.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func putImage(_ input: PutImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageResponse> {
        return self.client.execute(operation: "PutImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putImage(_ input: PutImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutImageResponse {
        return try await self.client.execute(operation: "PutImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the image scanning configuration for the specified repository.
    public func putImageScanningConfiguration(_ input: PutImageScanningConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageScanningConfigurationResponse> {
        return self.client.execute(operation: "PutImageScanningConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putImageScanningConfiguration(_ input: PutImageScanningConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutImageScanningConfigurationResponse {
        return try await self.client.execute(operation: "PutImageScanningConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the image tag mutability settings for the specified repository. For more information, see Image Tag Mutability in the Amazon Elastic Container Registry User Guide.
    public func putImageTagMutability(_ input: PutImageTagMutabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageTagMutabilityResponse> {
        return self.client.execute(operation: "PutImageTagMutability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putImageTagMutability(_ input: PutImageTagMutabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutImageTagMutabilityResponse {
        return try await self.client.execute(operation: "PutImageTagMutability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the lifecycle policy for the specified repository. For more information, see Lifecycle Policy Template.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLifecyclePolicyResponse> {
        return self.client.execute(operation: "PutLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putLifecyclePolicy(_ input: PutLifecyclePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutLifecyclePolicyResponse {
        return try await self.client.execute(operation: "PutLifecyclePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the permissions policy for your registry. A registry policy is used to specify permissions for another AWS account and is used when configuring cross-account replication. For more information, see Registry permissions in the Amazon Elastic Container Registry User Guide.
    public func putRegistryPolicy(_ input: PutRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRegistryPolicyResponse> {
        return self.client.execute(operation: "PutRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putRegistryPolicy(_ input: PutRegistryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRegistryPolicyResponse {
        return try await self.client.execute(operation: "PutRegistryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the replication configuration for a registry. The existing replication configuration for a repository can be retrieved with the DescribeRegistry API action. The first time the PutReplicationConfiguration API is called, a service-linked IAM role is created in your account for the replication process. For more information, see Using Service-Linked Roles for Amazon ECR in the Amazon Elastic Container Registry User Guide.  When configuring cross-account replication, the destination account must grant the source account permission to replicate. This permission is controlled using a registry permissions policy. For more information, see PutRegistryPolicy.
    public func putReplicationConfiguration(_ input: PutReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutReplicationConfigurationResponse> {
        return self.client.execute(operation: "PutReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putReplicationConfiguration(_ input: PutReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutReplicationConfigurationResponse {
        return try await self.client.execute(operation: "PutReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a repository policy to the specified repository to control access permissions. For more information, see Amazon ECR Repository Policies in the Amazon Elastic Container Registry User Guide.
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetRepositoryPolicyResponse> {
        return self.client.execute(operation: "SetRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetRepositoryPolicyResponse {
        return try await self.client.execute(operation: "SetRepositoryPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see Image Scanning in the Amazon Elastic Container Registry User Guide.
    public func startImageScan(_ input: StartImageScanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartImageScanResponse> {
        return self.client.execute(operation: "StartImageScan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func startImageScan(_ input: StartImageScanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartImageScanResponse {
        return try await self.client.execute(operation: "StartImageScan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.
    public func startLifecyclePolicyPreview(_ input: StartLifecyclePolicyPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLifecyclePolicyPreviewResponse> {
        return self.client.execute(operation: "StartLifecyclePolicyPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func startLifecyclePolicyPreview(_ input: StartLifecyclePolicyPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartLifecyclePolicyPreviewResponse {
        return try await self.client.execute(operation: "StartLifecyclePolicyPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Uploads an image layer part to Amazon ECR. When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images.
    public func uploadLayerPart(_ input: UploadLayerPartRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadLayerPartResponse> {
        return self.client.execute(operation: "UploadLayerPart", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func uploadLayerPart(_ input: UploadLayerPartRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadLayerPartResponse {
        return try await self.client.execute(operation: "UploadLayerPart", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ECR {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ECR, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
