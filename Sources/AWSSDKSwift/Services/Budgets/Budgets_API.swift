// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
The AWS Budgets API enables you to use AWS Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for AWS Budgets.  Budgets provide you with a way to see the following information:   How close your plan is to your budgeted amount or to the free tier limits   Your usage-to-date, including how much you've used of your Reserved Instances (RIs)   Your current estimated charges from AWS, and how much your predicted usage will accrue in charges by the end of the month   How much of your budget has been used   AWS updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:    Cost budgets - Plan how much you want to spend on a service.    Usage budgets - Plan how much you want to use one or more services.    RI utilization budgets - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.    RI coverage budgets - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.   Service Endpoint The AWS Budgets API provides the following endpoint:   https://budgets.amazonaws.com   For information about costs that are associated with the AWS Budgets API, see AWS Cost Management Pricing.
*/
public struct Budgets {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSBudgetServiceGateway",
            service: "budgets",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-10-20",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "budgets.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: [],
            possibleErrorTypes: [BudgetsErrorType.self]
        )
    }

    ///  Creates a notification. You must create the budget before you create the associated notification.
    public func createNotification(_ input: CreateNotificationRequest) throws -> CreateNotificationResponse {
        return try client.send(operation: "CreateNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.
    public func updateBudget(_ input: UpdateBudgetRequest) throws -> UpdateBudgetResponse {
        return try client.send(operation: "UpdateBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    public func describeBudgetPerformanceHistory(_ input: DescribeBudgetPerformanceHistoryRequest) throws -> DescribeBudgetPerformanceHistoryResponse {
        return try client.send(operation: "DescribeBudgetPerformanceHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a notification.
    public func updateNotification(_ input: UpdateNotificationRequest) throws -> UpdateNotificationResponse {
        return try client.send(operation: "UpdateNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget. 
    public func deleteBudget(_ input: DeleteBudgetRequest) throws -> DeleteBudgetResponse {
        return try client.send(operation: "DeleteBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a budget and, if included, notifications and subscribers. 
    public func createBudget(_ input: CreateBudgetRequest) throws -> CreateBudgetResponse {
        return try client.send(operation: "CreateBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the notifications that are associated with a budget.
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest) throws -> DescribeNotificationsForBudgetResponse {
        return try client.send(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a subscriber. You must create the associated budget and notification before you create the subscriber.
    public func createSubscriber(_ input: CreateSubscriberRequest) throws -> CreateSubscriberResponse {
        return try client.send(operation: "CreateSubscriber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification. 
    public func deleteNotification(_ input: DeleteNotificationRequest) throws -> DeleteNotificationResponse {
        return try client.send(operation: "DeleteNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a budget.
    public func describeBudget(_ input: DescribeBudgetRequest) throws -> DescribeBudgetResponse {
        return try client.send(operation: "DescribeBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification. 
    public func deleteSubscriber(_ input: DeleteSubscriberRequest) throws -> DeleteSubscriberResponse {
        return try client.send(operation: "DeleteSubscriber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the budgets that are associated with an account.
    public func describeBudgets(_ input: DescribeBudgetsRequest) throws -> DescribeBudgetsResponse {
        return try client.send(operation: "DescribeBudgets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the subscribers that are associated with a notification.
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest) throws -> DescribeSubscribersForNotificationResponse {
        return try client.send(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a subscriber.
    public func updateSubscriber(_ input: UpdateSubscriberRequest) throws -> UpdateSubscriberResponse {
        return try client.send(operation: "UpdateSubscriber", path: "/", httpMethod: "POST", input: input)
    }


}