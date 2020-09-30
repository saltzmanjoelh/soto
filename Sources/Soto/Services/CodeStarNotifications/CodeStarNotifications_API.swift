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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS CodeStarNotifications service.

 This AWS CodeStar Notifications API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Notifications API. You can use the AWS CodeStar Notifications API to work with the following objects: Notification rules, by calling the following:     CreateNotificationRule, which creates a notification rule for a resource in your account.     DeleteNotificationRule, which deletes a notification rule.     DescribeNotificationRule, which provides information about a notification rule.     ListNotificationRules, which lists the notification rules associated with your account.     UpdateNotificationRule, which changes the name, events, or targets associated with a notification rule.     Subscribe, which subscribes a target to a notification rule.     Unsubscribe, which removes a target from a notification rule.    Targets, by calling the following:     DeleteTarget, which removes a notification rule target (SNS topic) from a notification rule.     ListTargets, which lists the targets associated with a notification rule.    Events, by calling the following:     ListEventTypes, which lists the event types you can include in a notification rule.    Tags, by calling the following:     ListTagsForResource, which lists the tags already associated with a notification rule in your account.     TagResource, which associates a tag you provide with a notification rule in your account.     UntagResource, which removes a tag from a notification rule in your account.     For information about how to use AWS CodeStar Notifications, see link in the CodeStarNotifications User Guide.
 */
public struct CodeStarNotifications: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStarNotifications client
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
            service: "codestar-notifications",
            serviceProtocol: .restjson,
            apiVersion: "2019-10-15",
            endpoint: endpoint,
            possibleErrorTypes: [CodeStarNotificationsErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.
    public func createNotificationRule(_ input: CreateNotificationRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateNotificationRuleResult> {
        return self.client.execute(operation: "CreateNotificationRule", path: "/createNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a notification rule for a resource.
    public func deleteNotificationRule(_ input: DeleteNotificationRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteNotificationRuleResult> {
        return self.client.execute(operation: "DeleteNotificationRule", path: "/deleteNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a specified target for notifications.
    public func deleteTarget(_ input: DeleteTargetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteTargetResult> {
        return self.client.execute(operation: "DeleteTarget", path: "/deleteTarget", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a specified notification rule.
    public func describeNotificationRule(_ input: DescribeNotificationRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeNotificationRuleResult> {
        return self.client.execute(operation: "DescribeNotificationRule", path: "/describeNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about the event types available for configuring notifications.
    public func listEventTypes(_ input: ListEventTypesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEventTypesResult> {
        return self.client.execute(operation: "ListEventTypes", path: "/listEventTypes", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the notification rules for an AWS account.
    public func listNotificationRules(_ input: ListNotificationRulesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListNotificationRulesResult> {
        return self.client.execute(operation: "ListNotificationRules", path: "/listNotificationRules", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the tags associated with a notification rule.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResult> {
        return self.client.execute(operation: "ListTagsForResource", path: "/listTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the notification rule targets for an AWS account.
    public func listTargets(_ input: ListTargetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTargetsResult> {
        return self.client.execute(operation: "ListTargets", path: "/listTargets", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.
    public func subscribe(_ input: SubscribeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SubscribeResult> {
        return self.client.execute(operation: "Subscribe", path: "/subscribe", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a set of provided tags with a notification rule.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResult> {
        return self.client.execute(operation: "TagResource", path: "/tagResource", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.
    public func unsubscribe(_ input: UnsubscribeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UnsubscribeResult> {
        return self.client.execute(operation: "Unsubscribe", path: "/unsubscribe", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the association between one or more provided tags and a notification rule.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResult> {
        return self.client.execute(operation: "UntagResource", path: "/untagResource", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource.
    public func updateNotificationRule(_ input: UpdateNotificationRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateNotificationRuleResult> {
        return self.client.execute(operation: "UpdateNotificationRule", path: "/updateNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension CodeStarNotifications {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStarNotifications, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
