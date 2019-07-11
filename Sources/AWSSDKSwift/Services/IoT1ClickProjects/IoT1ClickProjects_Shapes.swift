// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoT1ClickProjects {

    public struct AssociateDeviceWithPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deviceId", required: true, type: .string), 
            AWSShapeMember(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName"), required: true, type: .string), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all deviceId values.
        public let deviceId: String
        /// The device template name to associate with the device ID.
        public let deviceTemplateName: String
        /// The name of the placement in which to associate the device.
        public let placementName: String
        /// The name of the project containing the placement in which to associate the device.
        public let projectName: String

        public init(deviceId: String, deviceTemplateName: String, placementName: String, projectName: String) {
            self.deviceId = deviceId
            self.deviceTemplateName = deviceTemplateName
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case deviceTemplateName = "deviceTemplateName"
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct AssociateDeviceWithPlacementResponse: AWSShape {

        public init() {
        }

    }

    public struct CreatePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.
        public let attributes: [String: String]?
        /// The name of the placement to be created.
        public let placementName: String
        /// The name of the project in which to create the placement.
        public let projectName: String

        public init(attributes: [String: String]? = nil, placementName: String, projectName: String) {
            self.attributes = attributes
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct CreatePlacementResponse: AWSShape {

        public init() {
        }

    }

    public struct CreateProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "tags", required: false, type: .map)
        ]
        /// An optional description for the project.
        public let description: String?
        /// The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update callbackOverrides for the device templates using the UpdateProject API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to create.
        public let projectName: String
        /// Optional tags (metadata key/value pairs) to be associated with the project. For example, { {"key1": "value1", "key2": "value2"} }. For more information, see AWS Tagging Strategies.
        public let tags: [String: String]?

        public init(description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String, tags: [String: String]? = nil) {
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case tags = "tags"
        }
    }

    public struct CreateProjectResponse: AWSShape {

        public init() {
        }

    }

    public struct DeletePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the empty placement to delete.
        public let placementName: String
        /// The project containing the empty placement to delete.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct DeletePlacementResponse: AWSShape {

        public init() {
        }

    }

    public struct DeleteProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the empty project to delete.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
        }
    }

    public struct DeleteProjectResponse: AWSShape {

        public init() {
        }

    }

    public struct DescribePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the placement within a project.
        public let placementName: String
        /// The project containing the placement to be described.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct DescribePlacementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placement", required: true, type: .structure)
        ]
        /// An object describing the placement.
        public let placement: PlacementDescription

        public init(placement: PlacementDescription) {
            self.placement = placement
        }

        private enum CodingKeys: String, CodingKey {
            case placement = "placement"
        }
    }

    public struct DescribeProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the project to be described.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
        }
    }

    public struct DescribeProjectResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "project", required: true, type: .structure)
        ]
        /// An object describing the project.
        public let project: ProjectDescription

        public init(project: ProjectDescription) {
            self.project = project
        }

        private enum CodingKeys: String, CodingKey {
            case project = "project"
        }
    }

    public struct DeviceTemplate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "callbackOverrides", required: false, type: .map), 
            AWSShapeMember(label: "deviceType", required: false, type: .string)
        ]
        /// An optional Lambda function to invoke instead of the default Lambda function provided by the placement template.
        public let callbackOverrides: [String: String]?
        /// The device type, which currently must be "button".
        public let deviceType: String?

        public init(callbackOverrides: [String: String]? = nil, deviceType: String? = nil) {
            self.callbackOverrides = callbackOverrides
            self.deviceType = deviceType
        }

        private enum CodingKeys: String, CodingKey {
            case callbackOverrides = "callbackOverrides"
            case deviceType = "deviceType"
        }
    }

    public struct DisassociateDeviceFromPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName"), required: true, type: .string), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The device ID that should be removed from the placement.
        public let deviceTemplateName: String
        /// The name of the placement that the device should be removed from.
        public let placementName: String
        /// The name of the project that contains the placement.
        public let projectName: String

        public init(deviceTemplateName: String, placementName: String, projectName: String) {
            self.deviceTemplateName = deviceTemplateName
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceTemplateName = "deviceTemplateName"
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct DisassociateDeviceFromPlacementResponse: AWSShape {

        public init() {
        }

    }

    public struct GetDevicesInPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the placement to get the devices from.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct GetDevicesInPlacementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "devices", required: true, type: .map)
        ]
        /// An object containing the devices (zero or more) within the placement.
        public let devices: [String: String]

        public init(devices: [String: String]) {
            self.devices = devices
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
        }
    }

    public struct ListPlacementsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
        public let maxResults: Int32?
        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The project containing the placements to be listed.
        public let projectName: String

        public init(maxResults: Int32? = nil, nextToken: String? = nil, projectName: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case projectName = "projectName"
        }
    }

    public struct ListPlacementsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "placements", required: true, type: .list)
        ]
        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?
        /// An object listing the requested placements.
        public let placements: [PlacementSummary]

        public init(nextToken: String? = nil, placements: [PlacementSummary]) {
            self.nextToken = nextToken
            self.placements = placements
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case placements = "placements"
        }
    }

    public struct ListProjectsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
        public let maxResults: Int32?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListProjectsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "projects", required: true, type: .list)
        ]
        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?
        /// An object containing the list of projects.
        public let projects: [ProjectSummary]

        public init(nextToken: String? = nil, projects: [ProjectSummary]) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct ListTagsForResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string)
        ]
        /// The ARN of the resource whose tags you want to list.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
        }
    }

    public struct ListTagsForResourceResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "tags", required: false, type: .map)
        ]
        /// The tags (metadata key/value pairs) which you have assigned to the resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct PlacementDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: true, type: .map), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp)
        ]
        /// The user-defined attributes associated with the placement.
        public let attributes: [String: String]
        /// The date when the placement was initially created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the placement.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(attributes: [String: String], createdDate: TimeStamp, placementName: String, projectName: String, updatedDate: TimeStamp) {
            self.attributes = attributes
            self.createdDate = createdDate
            self.placementName = placementName
            self.projectName = projectName
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case createdDate = "createdDate"
            case placementName = "placementName"
            case projectName = "projectName"
            case updatedDate = "updatedDate"
        }
    }

    public struct PlacementSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp)
        ]
        /// The date when the placement was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the placement being summarized.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(createdDate: TimeStamp, placementName: String, projectName: String, updatedDate: TimeStamp) {
            self.createdDate = createdDate
            self.placementName = placementName
            self.projectName = projectName
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case createdDate = "createdDate"
            case placementName = "placementName"
            case projectName = "projectName"
            case updatedDate = "updatedDate"
        }
    }

    public struct PlacementTemplate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "defaultAttributes", required: false, type: .map), 
            AWSShapeMember(label: "deviceTemplates", required: false, type: .map)
        ]
        /// The default attributes (key/value pairs) to be applied to all placements using this template.
        public let defaultAttributes: [String: String]?
        /// An object specifying the DeviceTemplate for all placements using this (PlacementTemplate) template.
        public let deviceTemplates: [String: DeviceTemplate]?

        public init(defaultAttributes: [String: String]? = nil, deviceTemplates: [String: DeviceTemplate]? = nil) {
            self.defaultAttributes = defaultAttributes
            self.deviceTemplates = deviceTemplates
        }

        private enum CodingKeys: String, CodingKey {
            case defaultAttributes = "defaultAttributes"
            case deviceTemplates = "deviceTemplates"
        }
    }

    public struct ProjectDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "tags", required: false, type: .map), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp)
        ]
        /// The ARN of the project.
        public let arn: String?
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The description of the project.
        public let description: String?
        /// An object describing the project's placement specifications.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project for which to obtain information from.
        public let projectName: String
        /// The tags (metadata key/value pairs) associated with the project.
        public let tags: [String: String]?
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(arn: String? = nil, createdDate: TimeStamp, description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String, tags: [String: String]? = nil, updatedDate: TimeStamp) {
            self.arn = arn
            self.createdDate = createdDate
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.tags = tags
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdDate = "createdDate"
            case description = "description"
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case tags = "tags"
            case updatedDate = "updatedDate"
        }
    }

    public struct ProjectSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "tags", required: false, type: .map), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp)
        ]
        /// The ARN of the project.
        public let arn: String?
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the project being summarized.
        public let projectName: String
        /// The tags (metadata key/value pairs) associated with the project.
        public let tags: [String: String]?
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(arn: String? = nil, createdDate: TimeStamp, projectName: String, tags: [String: String]? = nil, updatedDate: TimeStamp) {
            self.arn = arn
            self.createdDate = createdDate
            self.projectName = projectName
            self.tags = tags
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdDate = "createdDate"
            case projectName = "projectName"
            case tags = "tags"
            case updatedDate = "updatedDate"
        }
    }

    public struct TagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string), 
            AWSShapeMember(label: "tags", required: true, type: .map)
        ]
        /// The ARN of the resouce for which tag(s) should be added or modified.
        public let resourceArn: String
        /// The new or modifying tag(s) for the resource. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSShape {

        public init() {
        }

    }

    public struct UntagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", location: .uri(locationName: "resourceArn"), required: true, type: .string), 
            AWSShapeMember(label: "tagKeys", location: .querystring(locationName: "tagKeys"), required: true, type: .list)
        ]
        /// The ARN of the resource whose tag you want to remove.
        public let resourceArn: String
        /// The keys of those tags which you want to remove.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tagKeys = "tagKeys"
        }
    }

    public struct UntagResourceResponse: AWSShape {

        public init() {
        }

    }

    public struct UpdatePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.
        public let attributes: [String: String]?
        /// The name of the placement to update.
        public let placementName: String
        /// The name of the project containing the placement to be updated.
        public let projectName: String

        public init(attributes: [String: String]? = nil, placementName: String, projectName: String) {
            self.attributes = attributes
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct UpdatePlacementResponse: AWSShape {

        public init() {
        }

    }

    public struct UpdateProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// An optional user-defined description for the project.
        public let description: String?
        /// An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given placementTemplate, you can update the associated callbackOverrides for the device definition using this API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to be updated.
        public let projectName: String

        public init(description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String) {
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
        }
    }

    public struct UpdateProjectResponse: AWSShape {

        public init() {
        }

    }

}
