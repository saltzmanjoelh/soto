//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for ECS
public struct ECSErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case attributeLimitExceededException = "AttributeLimitExceededException"
        case blockedException = "BlockedException"
        case clientException = "ClientException"
        case clusterContainsContainerInstancesException = "ClusterContainsContainerInstancesException"
        case clusterContainsServicesException = "ClusterContainsServicesException"
        case clusterContainsTasksException = "ClusterContainsTasksException"
        case clusterNotFoundException = "ClusterNotFoundException"
        case invalidParameterException = "InvalidParameterException"
        case limitExceededException = "LimitExceededException"
        case missingVersionException = "MissingVersionException"
        case noUpdateAvailableException = "NoUpdateAvailableException"
        case platformTaskDefinitionIncompatibilityException = "PlatformTaskDefinitionIncompatibilityException"
        case platformUnknownException = "PlatformUnknownException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serverException = "ServerException"
        case serviceNotActiveException = "ServiceNotActiveException"
        case serviceNotFoundException = "ServiceNotFoundException"
        case targetNotFoundException = "TargetNotFoundException"
        case taskSetNotFoundException = "TaskSetNotFoundException"
        case unsupportedFeatureException = "UnsupportedFeatureException"
        case updateInProgressException = "UpdateInProgressException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ECS
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You do not have authorization to perform the requested action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with ListAttributes. You can remove existing attributes on a resource with DeleteAttributes.
    public static var attributeLimitExceededException: Self { .init(.attributeLimitExceededException) }
    /// Your AWS account has been blocked. For more information, contact AWS Support.
    public static var blockedException: Self { .init(.blockedException) }
    /// These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid.
    public static var clientException: Self { .init(.clientException) }
    /// You cannot delete a cluster that has registered container instances. First, deregister the container instances before you can delete the cluster. For more information, see DeregisterContainerInstance.
    public static var clusterContainsContainerInstancesException: Self { .init(.clusterContainsContainerInstancesException) }
    /// You cannot delete a cluster that contains services. First, update the service to reduce its desired task count to 0 and then delete the service. For more information, see UpdateService and DeleteService.
    public static var clusterContainsServicesException: Self { .init(.clusterContainsServicesException) }
    /// You cannot delete a cluster that has active tasks.
    public static var clusterContainsTasksException: Self { .init(.clusterContainsTasksException) }
    /// The specified cluster could not be found. You can view your available clusters with ListClusters. Amazon ECS clusters are Region-specific.
    public static var clusterNotFoundException: Self { .init(.clusterNotFoundException) }
    /// The specified parameter is invalid. Review the available parameters for the API request.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The limit for the resource has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.
    public static var missingVersionException: Self { .init(.missingVersionException) }
    /// There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.
    public static var noUpdateAvailableException: Self { .init(.noUpdateAvailableException) }
    /// The specified platform version does not satisfy the task definition's required capabilities.
    public static var platformTaskDefinitionIncompatibilityException: Self { .init(.platformTaskDefinitionIncompatibilityException) }
    /// The specified platform version does not exist.
    public static var platformUnknownException: Self { .init(.platformUnknownException) }
    /// The specified resource is in-use and cannot be removed.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The specified resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// These errors are usually caused by a server issue.
    public static var serverException: Self { .init(.serverException) }
    /// The specified service is not active. You can't update a service that is inactive. If you have previously deleted a service, you can re-create it with CreateService.
    public static var serviceNotActiveException: Self { .init(.serviceNotActiveException) }
    /// The specified service could not be found. You can view your available services with ListServices. Amazon ECS services are cluster-specific and Region-specific.
    public static var serviceNotFoundException: Self { .init(.serviceNotFoundException) }
    /// The specified target could not be found. You can view your available container instances with ListContainerInstances. Amazon ECS container instances are cluster-specific and Region-specific.
    public static var targetNotFoundException: Self { .init(.targetNotFoundException) }
    /// The specified task set could not be found. You can view your available task sets with DescribeTaskSets. Task sets are specific to each cluster, service and Region.
    public static var taskSetNotFoundException: Self { .init(.taskSetNotFoundException) }
    /// The specified task is not supported in this Region.
    public static var unsupportedFeatureException: Self { .init(.unsupportedFeatureException) }
    /// There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as PENDING or STAGING, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.
    public static var updateInProgressException: Self { .init(.updateInProgressException) }
}

extension ECSErrorType: Equatable {
    public static func == (lhs: ECSErrorType, rhs: ECSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ECSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
