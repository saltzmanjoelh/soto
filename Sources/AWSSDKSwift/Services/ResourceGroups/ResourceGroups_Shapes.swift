// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ResourceGroups {

    public struct CreateGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.
        public let description: String?
        /// The name of the group, which is the identifier of the group in other operations. A resource group name cannot be updated after it is created. A resource group name can have a maximum of 128 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with AWS or aws; these are reserved. A resource group name must be unique within your account.
        public let name: String
        /// The resource query that determines which AWS resources are members of this group.
        public let resourceQuery: ResourceQuery
        /// The tags to add to the group. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
        public let tags: [String: String]?

        public init(description: String? = nil, name: String, resourceQuery: ResourceQuery, tags: [String: String]? = nil) {
            self.description = description
            self.name = name
            self.resourceQuery = resourceQuery
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case name = "Name"
            case resourceQuery = "ResourceQuery"
            case tags = "Tags"
        }
    }

    public struct CreateGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure), 
            AWSShapeMember(label: "ResourceQuery", required: false, type: .structure), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// A full description of the resource group after it is created.
        public let group: Group?
        /// The resource query associated with the group.
        public let resourceQuery: ResourceQuery?
        /// The tags associated with the group.
        public let tags: [String: String]?

        public init(group: Group? = nil, resourceQuery: ResourceQuery? = nil, tags: [String: String]? = nil) {
            self.group = group
            self.resourceQuery = resourceQuery
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
            case resourceQuery = "ResourceQuery"
            case tags = "Tags"
        }
    }

    public struct DeleteGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group to delete.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct DeleteGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// A full description of the deleted resource group.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public struct GetGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct GetGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// A full description of the resource group.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public struct GetGroupQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The name of the resource group.
        public let groupName: String

        public init(groupName: String) {
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
        }
    }

    public struct GetGroupQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupQuery", required: false, type: .structure)
        ]
        /// The resource query associated with the specified group.
        public let groupQuery: GroupQuery?

        public init(groupQuery: GroupQuery? = nil) {
            self.groupQuery = groupQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupQuery = "GroupQuery"
        }
    }

    public struct GetTagsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string)
        ]
        /// The ARN of the resource group for which you want a list of tags. The resource must exist within the account you are using.
        public let arn: String

        public init(arn: String) {
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
        }
    }

    public struct GetTagsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// The ARN of the tagged resource group.
        public let arn: String?
        /// The tags associated with the specified resource group.
        public let tags: [String: String]?

        public init(arn: String? = nil, tags: [String: String]? = nil) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct Group: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "GroupArn", required: true, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The description of the resource group.
        public let description: String?
        /// The ARN of a resource group.
        public let groupArn: String
        /// The name of a resource group.
        public let name: String

        public init(description: String? = nil, groupArn: String, name: String) {
            self.description = description
            self.groupArn = groupArn
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case groupArn = "GroupArn"
            case name = "Name"
        }
    }

    public struct GroupFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .enum), 
            AWSShapeMember(label: "Values", required: true, type: .list)
        ]
        /// The name of the filter. Filter names are case-sensitive.
        public let name: GroupFilterName
        /// One or more filter values. Allowed filter values vary by group filter name, and are case-sensitive.
        public let values: [String]

        public init(name: GroupFilterName, values: [String]) {
            self.name = name
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    public enum GroupFilterName: String, CustomStringConvertible, Codable {
        case resourceType = "resource-type"
        public var description: String { return self.rawValue }
    }

    public struct GroupIdentifier: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupArn", required: false, type: .string), 
            AWSShapeMember(label: "GroupName", required: false, type: .string)
        ]
        /// The ARN of a resource group.
        public let groupArn: String?
        /// The name of a resource group.
        public let groupName: String?

        public init(groupArn: String? = nil, groupName: String? = nil) {
            self.groupArn = groupArn
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case groupArn = "GroupArn"
            case groupName = "GroupName"
        }
    }

    public struct GroupQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", required: true, type: .string), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure)
        ]
        /// The name of a resource group that is associated with a specific resource query.
        public let groupName: String
        /// The resource query which determines which AWS resources are members of the associated resource group.
        public let resourceQuery: ResourceQuery

        public init(groupName: String, resourceQuery: ResourceQuery) {
            self.groupName = groupName
            self.resourceQuery = resourceQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case resourceQuery = "ResourceQuery"
        }
    }

    public struct ListGroupResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .list), 
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// Filters, formatted as ResourceFilter objects, that you want to apply to a ListGroupResources operation.    resource-type - Filter resources by their type. Specify up to five resource types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.  
        public let filters: [ResourceFilter]?
        /// The name of the resource group.
        public let groupName: String
        /// The maximum number of group member ARNs that are returned in a single call by ListGroupResources, in paginated output. By default, this number is 50.
        public let maxResults: Int32?
        /// The NextToken value that is returned in a paginated ListGroupResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?

        public init(filters: [ResourceFilter]? = nil, groupName: String, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.groupName = groupName
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case groupName = "GroupName"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListGroupResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "QueryErrors", required: false, type: .list), 
            AWSShapeMember(label: "ResourceIdentifiers", required: false, type: .list)
        ]
        /// The NextToken value to include in a subsequent ListGroupResources request, to get more results.
        public let nextToken: String?
        /// A list of QueryError objects. Each error is an object that contains ErrorCode and Message structures. Possible values for ErrorCode are CLOUDFORMATION_STACK_INACTIVE and CLOUDFORMATION_STACK_NOT_EXISTING.
        public let queryErrors: [QueryError]?
        /// The ARNs and resource types of resources that are members of the group that you specified.
        public let resourceIdentifiers: [ResourceIdentifier]?

        public init(nextToken: String? = nil, queryErrors: [QueryError]? = nil, resourceIdentifiers: [ResourceIdentifier]? = nil) {
            self.nextToken = nextToken
            self.queryErrors = queryErrors
            self.resourceIdentifiers = resourceIdentifiers
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case queryErrors = "QueryErrors"
            case resourceIdentifiers = "ResourceIdentifiers"
        }
    }

    public struct ListGroupsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .list), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// Filters, formatted as GroupFilter objects, that you want to apply to a ListGroups operation.    resource-type - Filter groups by resource type. Specify up to five resource types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.  
        public let filters: [GroupFilter]?
        /// The maximum number of resource group results that are returned by ListGroups in paginated output. By default, this number is 50.
        public let maxResults: Int32?
        /// The NextToken value that is returned in a paginated ListGroups request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?

        public init(filters: [GroupFilter]? = nil, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListGroupsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupIdentifiers", required: false, type: .list), 
            AWSShapeMember(label: "Groups", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of GroupIdentifier objects. Each identifier is an object that contains both the GroupName and the GroupArn.
        public let groupIdentifiers: [GroupIdentifier]?
        /// A list of resource groups.
        public let groups: [Group]?
        /// The NextToken value to include in a subsequent ListGroups request, to get more results.
        public let nextToken: String?

        public init(groupIdentifiers: [GroupIdentifier]? = nil, groups: [Group]? = nil, nextToken: String? = nil) {
            self.groupIdentifiers = groupIdentifiers
            self.groups = groups
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case groupIdentifiers = "GroupIdentifiers"
            case groups = "Groups"
            case nextToken = "NextToken"
        }
    }

    public struct QueryError: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .enum), 
            AWSShapeMember(label: "Message", required: false, type: .string)
        ]
        /// Possible values are CLOUDFORMATION_STACK_INACTIVE and CLOUDFORMATION_STACK_NOT_EXISTING.
        public let errorCode: QueryErrorCode?
        /// A message that explains the ErrorCode value. Messages might state that the specified CloudFormation stack does not exist (or no longer exists). For CLOUDFORMATION_STACK_INACTIVE, the message typically states that the CloudFormation stack has a status that is not (or no longer) active, such as CREATE_FAILED.
        public let message: String?

        public init(errorCode: QueryErrorCode? = nil, message: String? = nil) {
            self.errorCode = errorCode
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case message = "Message"
        }
    }

    public enum QueryErrorCode: String, CustomStringConvertible, Codable {
        case cloudformationStackInactive = "CLOUDFORMATION_STACK_INACTIVE"
        case cloudformationStackNotExisting = "CLOUDFORMATION_STACK_NOT_EXISTING"
        public var description: String { return self.rawValue }
    }

    public enum QueryType: String, CustomStringConvertible, Codable {
        case tagFilters10 = "TAG_FILTERS_1_0"
        case cloudformationStack10 = "CLOUDFORMATION_STACK_1_0"
        public var description: String { return self.rawValue }
    }

    public struct ResourceFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .enum), 
            AWSShapeMember(label: "Values", required: true, type: .list)
        ]
        /// The name of the filter. Filter names are case-sensitive.
        public let name: ResourceFilterName
        /// One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.
        public let values: [String]

        public init(name: ResourceFilterName, values: [String]) {
            self.name = name
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    public enum ResourceFilterName: String, CustomStringConvertible, Codable {
        case resourceType = "resource-type"
        public var description: String { return self.rawValue }
    }

    public struct ResourceIdentifier: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceArn", required: false, type: .string), 
            AWSShapeMember(label: "ResourceType", required: false, type: .string)
        ]
        /// The ARN of a resource.
        public let resourceArn: String?
        /// The resource type of a resource, such as AWS::EC2::Instance.
        public let resourceType: String?

        public init(resourceArn: String? = nil, resourceType: String? = nil) {
            self.resourceArn = resourceArn
            self.resourceType = resourceType
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case resourceType = "ResourceType"
        }
    }

    public struct ResourceQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Query", required: true, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// The query that defines a group or a search.
        public let query: String
        /// The type of the query. The valid values in this release are TAG_FILTERS_1_0 and CLOUDFORMATION_STACK_1_0.   TAG_FILTERS_1_0:  A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API GetResources operation. If you specify more than one tag key, only resources that match all tag keys, and at least one value of each specified tag key, are returned in your query. If you specify more than one value for a tag key, a resource matches the filter if it has a tag key value that matches any of the specified values. For example, consider the following sample query for resources that have two tags, Stage and Version, with two values each. ([{"Key":"Stage","Values":["Test","Deploy"]},{"Key":"Version","Values":["1","2"]}]) The results of this query might include the following.   An EC2 instance that has the following two tags: {"Key":"Stage","Value":"Deploy"}, and {"Key":"Version","Value":"2"}    An S3 bucket that has the following two tags: {"Key":"Stage","Value":"Test"}, and {"Key":"Version","Value":"1"}   The query would not return the following results, however. The following EC2 instance does not have all tag keys specified in the filter, so it is rejected. The RDS database has all of the tag keys, but no values that match at least one of the specified tag key values in the filter.   An EC2 instance that has only the following tag: {"Key":"Stage","Value":"Deploy"}.   An RDS database that has the following two tags: {"Key":"Stage","Value":"Archived"}, and {"Key":"Version","Value":"4"}      CLOUDFORMATION_STACK_1_0:  A JSON syntax that lets you specify a CloudFormation stack ARN.
        public let `type`: QueryType

        public init(query: String, type: QueryType) {
            self.query = query
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case query = "Query"
            case `type` = "Type"
        }
    }

    public struct SearchResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure)
        ]
        /// The maximum number of group member ARNs returned by SearchResources in paginated output. By default, this number is 50.
        public let maxResults: Int32?
        /// The NextToken value that is returned in a paginated SearchResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.
        public let nextToken: String?
        /// The search query, using the same formats that are supported for resource group definition.
        public let resourceQuery: ResourceQuery

        public init(maxResults: Int32? = nil, nextToken: String? = nil, resourceQuery: ResourceQuery) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceQuery = resourceQuery
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceQuery = "ResourceQuery"
        }
    }

    public struct SearchResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "QueryErrors", required: false, type: .list), 
            AWSShapeMember(label: "ResourceIdentifiers", required: false, type: .list)
        ]
        /// The NextToken value to include in a subsequent SearchResources request, to get more results.
        public let nextToken: String?
        /// A list of QueryError objects. Each error is an object that contains ErrorCode and Message structures. Possible values for ErrorCode are CLOUDFORMATION_STACK_INACTIVE and CLOUDFORMATION_STACK_NOT_EXISTING.
        public let queryErrors: [QueryError]?
        /// The ARNs and resource types of resources that are members of the group that you specified.
        public let resourceIdentifiers: [ResourceIdentifier]?

        public init(nextToken: String? = nil, queryErrors: [QueryError]? = nil, resourceIdentifiers: [ResourceIdentifier]? = nil) {
            self.nextToken = nextToken
            self.queryErrors = queryErrors
            self.resourceIdentifiers = resourceIdentifiers
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case queryErrors = "QueryErrors"
            case resourceIdentifiers = "ResourceIdentifiers"
        }
    }

    public struct TagInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string), 
            AWSShapeMember(label: "Tags", required: true, type: .map)
        ]
        /// The ARN of the resource to which to add tags.
        public let arn: String
        /// The tags to add to the specified resource. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
        public let tags: [String: String]

        public init(arn: String, tags: [String: String]) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct TagOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .map)
        ]
        /// The ARN of the tagged resource.
        public let arn: String?
        /// The tags that have been added to the specified resource.
        public let tags: [String: String]?

        public init(arn: String? = nil, tags: [String: String]? = nil) {
            self.arn = arn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case tags = "Tags"
        }
    }

    public struct UntagInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", location: .uri(locationName: "Arn"), required: true, type: .string), 
            AWSShapeMember(label: "Keys", required: true, type: .list)
        ]
        /// The ARN of the resource from which to remove tags.
        public let arn: String
        /// The keys of the tags to be removed.
        public let keys: [String]

        public init(arn: String, keys: [String]) {
            self.arn = arn
            self.keys = keys
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case keys = "Keys"
        }
    }

    public struct UntagOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "Keys", required: false, type: .list)
        ]
        /// The ARN of the resource from which tags have been removed.
        public let arn: String?
        /// The keys of tags that have been removed.
        public let keys: [String]?

        public init(arn: String? = nil, keys: [String]? = nil) {
            self.arn = arn
            self.keys = keys
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case keys = "Keys"
        }
    }

    public struct UpdateGroupInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string)
        ]
        /// The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.
        public let description: String?
        /// The name of the resource group for which you want to update its description.
        public let groupName: String

        public init(description: String? = nil, groupName: String) {
            self.description = description
            self.groupName = groupName
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case groupName = "GroupName"
        }
    }

    public struct UpdateGroupOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Group", required: false, type: .structure)
        ]
        /// The full description of the resource group after it has been updated.
        public let group: Group?

        public init(group: Group? = nil) {
            self.group = group
        }

        private enum CodingKeys: String, CodingKey {
            case group = "Group"
        }
    }

    public struct UpdateGroupQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupName", location: .uri(locationName: "GroupName"), required: true, type: .string), 
            AWSShapeMember(label: "ResourceQuery", required: true, type: .structure)
        ]
        /// The name of the resource group for which you want to edit the query.
        public let groupName: String
        /// The resource query that determines which AWS resources are members of the resource group.
        public let resourceQuery: ResourceQuery

        public init(groupName: String, resourceQuery: ResourceQuery) {
            self.groupName = groupName
            self.resourceQuery = resourceQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case resourceQuery = "ResourceQuery"
        }
    }

    public struct UpdateGroupQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupQuery", required: false, type: .structure)
        ]
        /// The resource query associated with the resource group after the update.
        public let groupQuery: GroupQuery?

        public init(groupQuery: GroupQuery? = nil) {
            self.groupQuery = groupQuery
        }

        private enum CodingKeys: String, CodingKey {
            case groupQuery = "GroupQuery"
        }
    }

}
