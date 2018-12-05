// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Resource Groups Tagging API This guide describes the API operations for the resource groups tagging. A tag is a label that you assign to an AWS resource. A tag consists of a key and a value, both of which you define. For example, if you have two Amazon EC2 instances, you might assign both a tag key of "Stack." But the value of "Stack" might be "Testing" for one and "Production" for the other. Tagging can help you organize your resources and enables you to simplify resource management, access management and cost allocation. For more information about tagging, see Working with Tag Editor and Working with Resource Groups. For more information about permissions you need to use the resource groups tagging APIs, see Obtaining Permissions for Resource Groups  and Obtaining Permissions for Tagging . You can use the resource groups tagging APIs to complete the following tasks:   Tag and untag supported resources located in the specified region for the AWS account   Use tag-based filters to search for resources located in the specified region for the AWS account   List all existing tag keys in the specified region for the AWS account   List all existing values for the specified key in the specified region for the AWS account   Not all resources can have tags. For a lists of resources that you can tag, see Supported Resources in the AWS Resource Groups and Tag Editor User Guide. To make full use of the resource groups tagging APIs, you might need additional IAM permissions, including permission to access the resources of individual services as well as permission to view and apply tags to those resources. For more information, see Obtaining Permissions for Tagging in the AWS Resource Groups and Tag Editor User Guide.
*/
public struct ResourceGroupsTaggingAPI {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "ResourceGroupsTaggingAPI_20170126",
            service: "tagging",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-26",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ResourceGroupsTaggingAPIErrorType.self]
        )
    }

    ///  Returns all the tagged resources that are associated with the specified tags (keys and values) located in the specified region for the AWS account. The tags and the resource types that you specify in the request are known as filters. The response includes all tags that are associated with the requested resources. If no filter is provided, this action returns a paginated resource list with the associated tags.
    public func getResources(_ input: GetResourcesInput) throws -> GetResourcesOutput {
        return try client.send(operation: "GetResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all tag keys in the specified region for the AWS account.
    public func getTagKeys(_ input: GetTagKeysInput) throws -> GetTagKeysOutput {
        return try client.send(operation: "GetTagKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all tag values for the specified key in the specified region for the AWS account.
    public func getTagValues(_ input: GetTagValuesInput) throws -> GetTagValuesOutput {
        return try client.send(operation: "GetTagValues", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see Obtaining Permissions for Tagging in the AWS Resource Groups and Tag Editor User Guide.   You can only tag resources that are located in the specified region for the AWS account.  
    public func untagResources(_ input: UntagResourcesInput) throws -> UntagResourcesOutput {
        return try client.send(operation: "UntagResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies one or more tags to the specified resources. Note the following:   Not all resources can have tags. For a list of resources that support tagging, see Supported Resources in the AWS Resource Groups and Tag Editor User Guide.   Each resource can have up to 50 tags. For other limits, see Tag Restrictions in the Amazon EC2 User Guide for Linux Instances.   You can only tag resources that are located in the specified region for the AWS account.   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see Obtaining Permissions for Tagging in the AWS Resource Groups and Tag Editor User Guide.  
    public func tagResources(_ input: TagResourcesInput) throws -> TagResourcesOutput {
        return try client.send(operation: "TagResources", path: "/", httpMethod: "POST", input: input)
    }


}