// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Resource Groups AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources. To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs. For more information about Resource Groups, see the AWS Resource Groups User Guide. AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.   Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities   Applying, editing, and removing tags from resource groups   Resolving resource group member ARNs so they can be returned as search results   Getting data about resources that are members of a group   Searching AWS resources based on a resource query  
*/
public struct ResourceGroups {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "resource-groups",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ResourceGroupsErrorType.self]
        )
    }

    ///  Creates a group with a specified name, description, and resource query.
    public func createGroup(_ input: CreateGroupInput) throws -> Future<CreateGroupOutput> {
        return try client.send(operation: "CreateGroup", path: "/groups", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.
    public func deleteGroup(_ input: DeleteGroupInput) throws -> Future<DeleteGroupOutput> {
        return try client.send(operation: "DeleteGroup", path: "/groups/{GroupName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about a specified resource group.
    public func getGroup(_ input: GetGroupInput) throws -> Future<GetGroupOutput> {
        return try client.send(operation: "GetGroup", path: "/groups/{GroupName}", httpMethod: "GET", input: input)
    }

    ///  Returns the resource query associated with the specified resource group.
    public func getGroupQuery(_ input: GetGroupQueryInput) throws -> Future<GetGroupQueryOutput> {
        return try client.send(operation: "GetGroupQuery", path: "/groups/{GroupName}/query", httpMethod: "GET", input: input)
    }

    ///  Returns a list of tags that are associated with a resource group, specified by an ARN.
    public func getTags(_ input: GetTagsInput) throws -> Future<GetTagsOutput> {
        return try client.send(operation: "GetTags", path: "/resources/{Arn}/tags", httpMethod: "GET", input: input)
    }

    ///  Returns a list of ARNs of resources that are members of a specified resource group.
    public func listGroupResources(_ input: ListGroupResourcesInput) throws -> Future<ListGroupResourcesOutput> {
        return try client.send(operation: "ListGroupResources", path: "/groups/{GroupName}/resource-identifiers-list", httpMethod: "POST", input: input)
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroups(_ input: ListGroupsInput) throws -> Future<ListGroupsOutput> {
        return try client.send(operation: "ListGroups", path: "/groups-list", httpMethod: "POST", input: input)
    }

    ///  Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResources(_ input: SearchResourcesInput) throws -> Future<SearchResourcesOutput> {
        return try client.send(operation: "SearchResources", path: "/resources/search", httpMethod: "POST", input: input)
    }

    ///  Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.
    public func tag(_ input: TagInput) throws -> Future<TagOutput> {
        return try client.send(operation: "Tag", path: "/resources/{Arn}/tags", httpMethod: "PUT", input: input)
    }

    ///  Deletes specified tags from a specified resource.
    public func untag(_ input: UntagInput) throws -> Future<UntagOutput> {
        return try client.send(operation: "Untag", path: "/resources/{Arn}/tags", httpMethod: "PATCH", input: input)
    }

    ///  Updates an existing group with a new or changed description. You cannot update the name of a resource group.
    public func updateGroup(_ input: UpdateGroupInput) throws -> Future<UpdateGroupOutput> {
        return try client.send(operation: "UpdateGroup", path: "/groups/{GroupName}", httpMethod: "PUT", input: input)
    }

    ///  Updates the resource query of a group.
    public func updateGroupQuery(_ input: UpdateGroupQueryInput) throws -> Future<UpdateGroupQueryOutput> {
        return try client.send(operation: "UpdateGroupQuery", path: "/groups/{GroupName}/query", httpMethod: "PUT", input: input)
    }


}
