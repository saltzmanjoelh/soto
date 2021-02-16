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

/// Service object for interacting with AWS ComputeOptimizer service.
///
/// AWS Compute Optimizer is a service that analyzes the configuration and utilization metrics of your AWS compute resources, such as EC2 instances, Auto Scaling groups, AWS Lambda functions, and Amazon EBS volumes. It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, as well as projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, including the required permissions to use the service, see the AWS Compute Optimizer User Guide.
public struct ComputeOptimizer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ComputeOptimizer client
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
            amzTarget: "ComputeOptimizerService",
            service: "compute-optimizer",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            errorType: ComputeOptimizerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.
    public func describeRecommendationExportJobs(_ input: DescribeRecommendationExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecommendationExportJobsResponse> {
        return self.client.execute(operation: "DescribeRecommendationExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func describeRecommendationExportJobs(_ input: DescribeRecommendationExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecommendationExportJobsResponse {
        return try await self.client.execute(operation: "DescribeRecommendationExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per AWS Region.
    public func exportAutoScalingGroupRecommendations(_ input: ExportAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportAutoScalingGroupRecommendationsResponse> {
        return self.client.execute(operation: "ExportAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func exportAutoScalingGroupRecommendations(_ input: ExportAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(operation: "ExportAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per AWS Region.
    public func exportEC2InstanceRecommendations(_ input: ExportEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportEC2InstanceRecommendationsResponse> {
        return self.client.execute(operation: "ExportEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func exportEC2InstanceRecommendations(_ input: ExportEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportEC2InstanceRecommendationsResponse {
        return try await self.client.execute(operation: "ExportEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Auto Scaling group recommendations. AWS Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more information, see the Supported resources and requirements in the AWS Compute Optimizer User Guide.
    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAutoScalingGroupRecommendationsResponse> {
        return self.client.execute(operation: "GetAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(operation: "GetAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. AWS Compute Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of requirements. For more information, see the Supported resources and requirements in the AWS Compute Optimizer User Guide.
    public func getEBSVolumeRecommendations(_ input: GetEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEBSVolumeRecommendationsResponse> {
        return self.client.execute(operation: "GetEBSVolumeRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getEBSVolumeRecommendations(_ input: GetEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEBSVolumeRecommendationsResponse {
        return try await self.client.execute(operation: "GetEBSVolumeRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Amazon EC2 instance recommendations. AWS Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more information, see the Supported resources and requirements in the AWS Compute Optimizer User Guide.
    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEC2InstanceRecommendationsResponse> {
        return self.client.execute(operation: "GetEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEC2InstanceRecommendationsResponse {
        return try await self.client.execute(operation: "GetEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the projected utilization metrics of Amazon EC2 instance recommendations.  The Cpu and Memory metrics are the only projected utilization metrics returned when you run this action. Additionally, the Memory metric is returned only for resources that have the unified CloudWatch agent installed on them. For more information, see Enabling Memory Utilization with the CloudWatch Agent.
    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEC2RecommendationProjectedMetricsResponse> {
        return self.client.execute(operation: "GetEC2RecommendationProjectedMetrics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEC2RecommendationProjectedMetricsResponse {
        return try await self.client.execute(operation: "GetEC2RecommendationProjectedMetrics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is the management account of an organization, this action also confirms the enrollment status of member accounts within the organization.
    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEnrollmentStatusResponse> {
        return self.client.execute(operation: "GetEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnrollmentStatusResponse {
        return try await self.client.execute(operation: "GetEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns AWS Lambda function recommendations. AWS Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the Supported resources and requirements in the AWS Compute Optimizer User Guide.
    public func getLambdaFunctionRecommendations(_ input: GetLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLambdaFunctionRecommendationsResponse> {
        return self.client.execute(operation: "GetLambdaFunctionRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getLambdaFunctionRecommendations(_ input: GetLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLambdaFunctionRecommendationsResponse {
        return try await self.client.execute(operation: "GetLambdaFunctionRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the optimization findings for an account. For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.
    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecommendationSummariesResponse> {
        return self.client.execute(operation: "GetRecommendationSummaries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecommendationSummariesResponse {
        return try await self.client.execute(operation: "GetRecommendationSummaries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a management account of an organization, this action can also be used to enroll member accounts within the organization.
    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEnrollmentStatusResponse> {
        return self.client.execute(operation: "UpdateEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEnrollmentStatusResponse {
        return try await self.client.execute(operation: "UpdateEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ComputeOptimizer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ComputeOptimizer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
