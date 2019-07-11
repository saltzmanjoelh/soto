// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ResourceGroupsTaggingAPI {

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case internalserviceexception = "InternalServiceException"
        case invalidparameterexception = "InvalidParameterException"
        public var description: String { return self.rawValue }
    }

    public struct FailureInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .enum), 
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "StatusCode", required: false, type: .integer)
        ]
        /// The code of the common error. Valid values include InternalServiceException, InvalidParameterException, and any valid error code returned by the AWS service that hosts the resource that you want to tag.
        public let errorCode: ErrorCode?
        /// The message of the common error.
        public let errorMessage: String?
        /// The HTTP status code of the common error.
        public let statusCode: Int32?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, statusCode: Int32? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case statusCode = "StatusCode"
        }
    }

    public struct GetResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceTypeFilters", required: false, type: .list), 
            AWSShapeMember(label: "ResourcesPerPage", required: false, type: .integer), 
            AWSShapeMember(label: "TagFilters", required: false, type: .list), 
            AWSShapeMember(label: "TagsPerPage", required: false, type: .integer)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// The constraints on the resources that you want returned. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the AWS General Reference for the following:   For a list of service name strings, see AWS Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.   You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. 
        public let resourceTypeFilters: [String]?
        /// A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 100 items. 
        public let resourcesPerPage: Int32?
        /// A list of TagFilters (keys and values). Each TagFilter specified must contain a key with values as optional. A request can include up to 50 keys, and each key can include up to 20 values.  Note the following when deciding how to use TagFilters:   If you do specify a TagFilter, the response returns only those resources that are currently associated with the specified tag.    If you don't specify a TagFilter, the response includes all resources that were ever associated with tags. Resources that currently don't have associated tags are shown with an empty tag set, like this: "Tags": [].   If you specify more than one filter in a single request, the response returns only those resources that satisfy all specified filters.   If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.   If you don't specify any values for a key, the response returns resources that are tagged with that key irrespective of the value. For example, for filters: filter1 = {key1, {value1}}, filter2 = {key2, {value2,value3,value4}} , filter3 = {key3}:   GetResources( {filter1} ) returns resources tagged with key1=value1   GetResources( {filter2} ) returns resources tagged with key2=value2 or key2=value3 or key2=value4   GetResources( {filter3} ) returns resources tagged with any tag containing key3 as its tag key, irrespective of its value   GetResources( {filter1,filter2,filter3} ) returns resources tagged with ( key1=value1) and ( key2=value2 or key2=value3 or key2=value4) and (key3, irrespective of the value)    
        public let tagFilters: [TagFilter]?
        /// A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).  GetResources does not split a resource and its associated tags across pages. If the specified TagsPerPage would cause such a break, a PaginationToken is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a TagsPerPage of 100 and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags. You can set TagsPerPage to a minimum of 100 items and the maximum of 500 items.
        public let tagsPerPage: Int32?

        public init(paginationToken: String? = nil, resourceTypeFilters: [String]? = nil, resourcesPerPage: Int32? = nil, tagFilters: [TagFilter]? = nil, tagsPerPage: Int32? = nil) {
            self.paginationToken = paginationToken
            self.resourceTypeFilters = resourceTypeFilters
            self.resourcesPerPage = resourcesPerPage
            self.tagFilters = tagFilters
            self.tagsPerPage = tagsPerPage
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTypeFilters = "ResourceTypeFilters"
            case resourcesPerPage = "ResourcesPerPage"
            case tagFilters = "TagFilters"
            case tagsPerPage = "TagsPerPage"
        }
    }

    public struct GetResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceTagMappingList", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of resource ARNs and the tags (keys and values) associated with each.
        public let resourceTagMappingList: [ResourceTagMapping]?

        public init(paginationToken: String? = nil, resourceTagMappingList: [ResourceTagMapping]? = nil) {
            self.paginationToken = paginationToken
            self.resourceTagMappingList = resourceTagMappingList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTagMappingList = "ResourceTagMappingList"
        }
    }

    public struct GetTagKeysInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(paginationToken: String? = nil) {
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagKeysOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagKeys", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag keys in the AWS account.
        public let tagKeys: [String]?

        public init(paginationToken: String? = nil, tagKeys: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagKeys = "TagKeys"
        }
    }

    public struct GetTagValuesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: true, type: .string), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// The key for which you want to list all existing values in the specified region for the AWS account.
        public let key: String
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(key: String, paginationToken: String? = nil) {
            self.key = key
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagValuesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagValues", required: false, type: .list)
        ]
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag values for the specified key in the AWS account.
        public let tagValues: [String]?

        public init(paginationToken: String? = nil, tagValues: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagValues = tagValues
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagValues = "TagValues"
        }
    }

    public struct ResourceTagMapping: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceARN", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: false, type: .list)
        ]
        /// The ARN of the resource.
        public let resourceARN: String?
        /// The tags that have been applied to one or more AWS resources.
        public let tags: [Tag]?

        public init(resourceARN: String? = nil, tags: [Tag]? = nil) {
            self.resourceARN = resourceARN
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct Tag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: true, type: .string), 
            AWSShapeMember(label: "Value", required: true, type: .string)
        ]
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: false, type: .string), 
            AWSShapeMember(label: "Values", required: false, type: .list)
        ]
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String?
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let values: [String]?

        public init(key: String? = nil, values: [String]? = nil) {
            self.key = key
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct TagResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list), 
            AWSShapeMember(label: "Tags", required: true, type: .map)
        ]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]
        /// The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
        public let tags: [String: String]

        public init(resourceARNList: [String], tags: [String: String]) {
            self.resourceARNList = resourceARNList
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tags = "Tags"
        }
    }

    public struct TagResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be tagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct UntagResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list), 
            AWSShapeMember(label: "TagKeys", required: true, type: .list)
        ]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]
        /// A list of the tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]

        public init(resourceARNList: [String], tagKeys: [String]) {
            self.resourceARNList = resourceARNList
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

}
