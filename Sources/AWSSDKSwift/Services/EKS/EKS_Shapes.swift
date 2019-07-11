// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension EKS {

    public struct Certificate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "data", required: false, type: .string)
        ]
        /// The Base64-encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
        public let data: String?

        public init(data: String? = nil) {
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case data = "data"
        }
    }

    public struct Cluster: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "certificateAuthority", required: false, type: .structure), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "createdAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "endpoint", required: false, type: .string), 
            AWSShapeMember(label: "logging", required: false, type: .structure), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "platformVersion", required: false, type: .string), 
            AWSShapeMember(label: "resourcesVpcConfig", required: false, type: .structure), 
            AWSShapeMember(label: "roleArn", required: false, type: .string), 
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "version", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the cluster.
        public let arn: String?
        /// The certificate-authority-data for your cluster.
        public let certificateAuthority: Certificate?
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The Unix epoch timestamp in seconds for when the cluster was created.
        public let createdAt: TimeStamp?
        /// The endpoint for your Kubernetes API server.
        public let endpoint: String?
        /// The logging configuration for your cluster.
        public let logging: Logging?
        /// The name of the cluster.
        public let name: String?
        /// The platform version of your Amazon EKS cluster. For more information, see Platform Versions in the  Amazon EKS User Guide .
        public let platformVersion: String?
        /// The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide.
        public let resourcesVpcConfig: VpcConfigResponse?
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
        public let roleArn: String?
        /// The current status of the cluster.
        public let status: ClusterStatus?
        /// The Kubernetes server version for the cluster.
        public let version: String?

        public init(arn: String? = nil, certificateAuthority: Certificate? = nil, clientRequestToken: String? = nil, createdAt: TimeStamp? = nil, endpoint: String? = nil, logging: Logging? = nil, name: String? = nil, platformVersion: String? = nil, resourcesVpcConfig: VpcConfigResponse? = nil, roleArn: String? = nil, status: ClusterStatus? = nil, version: String? = nil) {
            self.arn = arn
            self.certificateAuthority = certificateAuthority
            self.clientRequestToken = clientRequestToken
            self.createdAt = createdAt
            self.endpoint = endpoint
            self.logging = logging
            self.name = name
            self.platformVersion = platformVersion
            self.resourcesVpcConfig = resourcesVpcConfig
            self.roleArn = roleArn
            self.status = status
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case certificateAuthority = "certificateAuthority"
            case clientRequestToken = "clientRequestToken"
            case createdAt = "createdAt"
            case endpoint = "endpoint"
            case logging = "logging"
            case name = "name"
            case platformVersion = "platformVersion"
            case resourcesVpcConfig = "resourcesVpcConfig"
            case roleArn = "roleArn"
            case status = "status"
            case version = "version"
        }
    }

    public enum ClusterStatus: String, CustomStringConvertible, Codable {
        case creating = "CREATING"
        case active = "ACTIVE"
        case deleting = "DELETING"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public struct CreateClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "logging", required: false, type: .structure), 
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "resourcesVpcConfig", required: true, type: .structure), 
            AWSShapeMember(label: "roleArn", required: true, type: .string), 
            AWSShapeMember(label: "version", required: false, type: .string)
        ]
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing. 
        public let logging: Logging?
        /// The unique name to give to your cluster.
        public let name: String
        /// The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide. You must specify at least two subnets. You can specify up to five security groups, but we recommend that you use a dedicated security group for your cluster control plane.
        public let resourcesVpcConfig: VpcConfigRequest
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see Amazon EKS Service IAM Role in the  Amazon EKS User Guide .
        public let roleArn: String
        /// The desired Kubernetes version for your cluster. If you don't specify a value here, the latest version available in Amazon EKS is used.
        public let version: String?

        public init(clientRequestToken: String? = nil, logging: Logging? = nil, name: String, resourcesVpcConfig: VpcConfigRequest, roleArn: String, version: String? = nil) {
            self.clientRequestToken = clientRequestToken
            self.logging = logging
            self.name = name
            self.resourcesVpcConfig = resourcesVpcConfig
            self.roleArn = roleArn
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "clientRequestToken"
            case logging = "logging"
            case name = "name"
            case resourcesVpcConfig = "resourcesVpcConfig"
            case roleArn = "roleArn"
            case version = "version"
        }
    }

    public struct CreateClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your new cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct DeleteClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to delete.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

    public struct DeleteClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of the cluster to delete.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct DescribeClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to describe.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

    public struct DescribeClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your specified cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct DescribeUpdateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string), 
            AWSShapeMember(label: "updateId", location: .uri(locationName: "updateId"), required: true, type: .string)
        ]
        /// The name of the Amazon EKS cluster to update.
        public let name: String
        /// The ID of the update to describe.
        public let updateId: String

        public init(name: String, updateId: String) {
            self.name = name
            self.updateId = updateId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case updateId = "updateId"
        }
    }

    public struct DescribeUpdateResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "update", required: false, type: .structure)
        ]
        /// The full description of the specified update.
        public let update: Update?

        public init(update: Update? = nil) {
            self.update = update
        }

        private enum CodingKeys: String, CodingKey {
            case update = "update"
        }
    }

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case subnetnotfound = "SubnetNotFound"
        case securitygroupnotfound = "SecurityGroupNotFound"
        case enilimitreached = "EniLimitReached"
        case ipnotavailable = "IpNotAvailable"
        case accessdenied = "AccessDenied"
        case operationnotpermitted = "OperationNotPermitted"
        case vpcidnotfound = "VpcIdNotFound"
        case unknown = "Unknown"
        public var description: String { return self.rawValue }
    }

    public struct ErrorDetail: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "errorCode", required: false, type: .enum), 
            AWSShapeMember(label: "errorMessage", required: false, type: .string), 
            AWSShapeMember(label: "resourceIds", required: false, type: .list)
        ]
        /// A brief description of the error.     SubnetNotFound: We couldn't find one of the subnets associated with the cluster.    SecurityGroupNotFound: We couldn't find one of the security groups associated with the cluster.    EniLimitReached: You have reached the elastic network interface limit for your account.    IpNotAvailable: A subnet associated with the cluster doesn't have any free IP addresses.    AccessDenied: You don't have permissions to perform the specified operation.    OperationNotPermitted: The service role associated with the cluster doesn't have the required access permissions for Amazon EKS.    VpcIdNotFound: We couldn't find the VPC associated with the cluster.  
        public let errorCode: ErrorCode?
        /// A more complete description of the error.
        public let errorMessage: String?
        /// An optional field that contains the resource IDs associated with the error.
        public let resourceIds: [String]?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, resourceIds: [String]? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.resourceIds = resourceIds
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "errorCode"
            case errorMessage = "errorMessage"
            case resourceIds = "resourceIds"
        }
    }

    public struct ListClustersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// The maximum number of cluster results returned by ListClusters in paginated output. When you use this parameter, ListClusters returns only maxResults results in a single page along with a nextToken response element. You can see the remaining results of the initial request by sending another ListClusters request with the returned nextToken value. This value can be between 1 and 100. If you don't use this parameter, ListClusters returns up to 100 results and a nextToken value if applicable.
        public let maxResults: Int32?
        /// The nextToken value returned from a previous paginated ListClusters request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.  This token should be treated as an opaque identifier that is used only to retrieve the next items in a list and not for other programmatic purposes. 
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

    public struct ListClustersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clusters", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// A list of all of the clusters for your account in the specified Region.
        public let clusters: [String]?
        /// The nextToken value to include in a future ListClusters request. When the results of a ListClusters request exceed maxResults, you can use this value to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?

        public init(clusters: [String]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "clusters"
            case nextToken = "nextToken"
        }
    }

    public struct ListUpdatesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// The maximum number of update results returned by ListUpdates in paginated output. When you use this parameter, ListUpdates returns only maxResults results in a single page along with a nextToken response element. You can see the remaining results of the initial request by sending another ListUpdates request with the returned nextToken value. This value can be between 1 and 100. If you don't use this parameter, ListUpdates returns up to 100 results and a nextToken value if applicable.
        public let maxResults: Int32?
        /// The name of the Amazon EKS cluster to list updates for.
        public let name: String
        /// The nextToken value returned from a previous paginated ListUpdates request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, name: String, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.name = name
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case name = "name"
            case nextToken = "nextToken"
        }
    }

    public struct ListUpdatesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "updateIds", required: false, type: .list)
        ]
        /// The nextToken value to include in a future ListUpdates request. When the results of a ListUpdates request exceed maxResults, you can use this value to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// A list of all the updates for the specified cluster and Region.
        public let updateIds: [String]?

        public init(nextToken: String? = nil, updateIds: [String]? = nil) {
            self.nextToken = nextToken
            self.updateIds = updateIds
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case updateIds = "updateIds"
        }
    }

    public struct LogSetup: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "enabled", required: false, type: .boolean), 
            AWSShapeMember(label: "types", required: false, type: .list)
        ]
        /// If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.
        public let enabled: Bool?
        /// The available cluster control plane log types.
        public let types: [LogType]?

        public init(enabled: Bool? = nil, types: [LogType]? = nil) {
            self.enabled = enabled
            self.types = types
        }

        private enum CodingKeys: String, CodingKey {
            case enabled = "enabled"
            case types = "types"
        }
    }

    public enum LogType: String, CustomStringConvertible, Codable {
        case api = "api"
        case audit = "audit"
        case authenticator = "authenticator"
        case controllermanager = "controllerManager"
        case scheduler = "scheduler"
        public var description: String { return self.rawValue }
    }

    public struct Logging: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clusterLogging", required: false, type: .list)
        ]
        /// The cluster control plane logging configuration for your cluster.
        public let clusterLogging: [LogSetup]?

        public init(clusterLogging: [LogSetup]? = nil) {
            self.clusterLogging = clusterLogging
        }

        private enum CodingKeys: String, CodingKey {
            case clusterLogging = "clusterLogging"
        }
    }

    public struct Update: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "createdAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "errors", required: false, type: .list), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "params", required: false, type: .list), 
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "type", required: false, type: .enum)
        ]
        /// The Unix epoch timestamp in seconds for when the update was created.
        public let createdAt: TimeStamp?
        /// Any errors associated with a Failed update.
        public let errors: [ErrorDetail]?
        /// A UUID that is used to track the update.
        public let id: String?
        /// A key-value map that contains the parameters associated with the update.
        public let params: [UpdateParam]?
        /// The current status of the update.
        public let status: UpdateStatus?
        /// The type of the update.
        public let `type`: UpdateType?

        public init(createdAt: TimeStamp? = nil, errors: [ErrorDetail]? = nil, id: String? = nil, params: [UpdateParam]? = nil, status: UpdateStatus? = nil, type: UpdateType? = nil) {
            self.createdAt = createdAt
            self.errors = errors
            self.id = id
            self.params = params
            self.status = status
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt = "createdAt"
            case errors = "errors"
            case id = "id"
            case params = "params"
            case status = "status"
            case `type` = "type"
        }
    }

    public struct UpdateClusterConfigRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "logging", required: false, type: .structure), 
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string), 
            AWSShapeMember(label: "resourcesVpcConfig", required: false, type: .structure)
        ]
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing. 
        public let logging: Logging?
        /// The name of the Amazon EKS cluster to update.
        public let name: String
        public let resourcesVpcConfig: VpcConfigRequest?

        public init(clientRequestToken: String? = nil, logging: Logging? = nil, name: String, resourcesVpcConfig: VpcConfigRequest? = nil) {
            self.clientRequestToken = clientRequestToken
            self.logging = logging
            self.name = name
            self.resourcesVpcConfig = resourcesVpcConfig
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "clientRequestToken"
            case logging = "logging"
            case name = "name"
            case resourcesVpcConfig = "resourcesVpcConfig"
        }
    }

    public struct UpdateClusterConfigResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "update", required: false, type: .structure)
        ]
        public let update: Update?

        public init(update: Update? = nil) {
            self.update = update
        }

        private enum CodingKeys: String, CodingKey {
            case update = "update"
        }
    }

    public struct UpdateClusterVersionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string), 
            AWSShapeMember(label: "version", required: true, type: .string)
        ]
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The name of the Amazon EKS cluster to update.
        public let name: String
        /// The desired Kubernetes version following a successful update.
        public let version: String

        public init(clientRequestToken: String? = nil, name: String, version: String) {
            self.clientRequestToken = clientRequestToken
            self.name = name
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "clientRequestToken"
            case name = "name"
            case version = "version"
        }
    }

    public struct UpdateClusterVersionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "update", required: false, type: .structure)
        ]
        /// The full description of the specified update
        public let update: Update?

        public init(update: Update? = nil) {
            self.update = update
        }

        private enum CodingKeys: String, CodingKey {
            case update = "update"
        }
    }

    public struct UpdateParam: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "type", required: false, type: .enum), 
            AWSShapeMember(label: "value", required: false, type: .string)
        ]
        /// The keys associated with an update request.
        public let `type`: UpdateParamType?
        /// The value of the keys submitted as part of an update request.
        public let value: String?

        public init(type: UpdateParamType? = nil, value: String? = nil) {
            self.`type` = `type`
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "type"
            case value = "value"
        }
    }

    public enum UpdateParamType: String, CustomStringConvertible, Codable {
        case version = "Version"
        case platformversion = "PlatformVersion"
        case endpointprivateaccess = "EndpointPrivateAccess"
        case endpointpublicaccess = "EndpointPublicAccess"
        case clusterlogging = "ClusterLogging"
        public var description: String { return self.rawValue }
    }

    public enum UpdateStatus: String, CustomStringConvertible, Codable {
        case inprogress = "InProgress"
        case failed = "Failed"
        case cancelled = "Cancelled"
        case successful = "Successful"
        public var description: String { return self.rawValue }
    }

    public enum UpdateType: String, CustomStringConvertible, Codable {
        case versionupdate = "VersionUpdate"
        case endpointaccessupdate = "EndpointAccessUpdate"
        case loggingupdate = "LoggingUpdate"
        public var description: String { return self.rawValue }
    }

    public struct VpcConfigRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "endpointPrivateAccess", required: false, type: .boolean), 
            AWSShapeMember(label: "endpointPublicAccess", required: false, type: .boolean), 
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list), 
            AWSShapeMember(label: "subnetIds", required: false, type: .list)
        ]
        /// Set this value to true to enable private access for your cluster's Kubernetes API server endpoint. If you enable private access, Kubernetes API requests from within your cluster's VPC use the private VPC endpoint. The default value for this parameter is false, which disables private access for your Kubernetes API server. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .
        public let endpointPrivateAccess: Bool?
        /// Set this value to false to disable public access for your cluster's Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes API server can receive only requests from within the cluster VPC. The default value for this parameter is true, which enables public access for your Kubernetes API server. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .
        public let endpointPublicAccess: Bool?
        /// Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. If you don't specify a security group, the default security group for your VPC is used.
        public let securityGroupIds: [String]?
        /// Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
        public let subnetIds: [String]?

        public init(endpointPrivateAccess: Bool? = nil, endpointPublicAccess: Bool? = nil, securityGroupIds: [String]? = nil, subnetIds: [String]? = nil) {
            self.endpointPrivateAccess = endpointPrivateAccess
            self.endpointPublicAccess = endpointPublicAccess
            self.securityGroupIds = securityGroupIds
            self.subnetIds = subnetIds
        }

        private enum CodingKeys: String, CodingKey {
            case endpointPrivateAccess = "endpointPrivateAccess"
            case endpointPublicAccess = "endpointPublicAccess"
            case securityGroupIds = "securityGroupIds"
            case subnetIds = "subnetIds"
        }
    }

    public struct VpcConfigResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "endpointPrivateAccess", required: false, type: .boolean), 
            AWSShapeMember(label: "endpointPublicAccess", required: false, type: .boolean), 
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list), 
            AWSShapeMember(label: "subnetIds", required: false, type: .list), 
            AWSShapeMember(label: "vpcId", required: false, type: .string)
        ]
        /// This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet.
        public let endpointPrivateAccess: Bool?
        /// This parameter indicates whether the Amazon EKS public API server endpoint is enabled. If the Amazon EKS public API server endpoint is disabled, your cluster's Kubernetes API server can receive only requests that originate from within the cluster VPC. 
        public let endpointPublicAccess: Bool?
        /// The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.
        public let securityGroupIds: [String]?
        /// The subnets associated with your cluster.
        public let subnetIds: [String]?
        /// The VPC associated with your cluster.
        public let vpcId: String?

        public init(endpointPrivateAccess: Bool? = nil, endpointPublicAccess: Bool? = nil, securityGroupIds: [String]? = nil, subnetIds: [String]? = nil, vpcId: String? = nil) {
            self.endpointPrivateAccess = endpointPrivateAccess
            self.endpointPublicAccess = endpointPublicAccess
            self.securityGroupIds = securityGroupIds
            self.subnetIds = subnetIds
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case endpointPrivateAccess = "endpointPrivateAccess"
            case endpointPublicAccess = "endpointPublicAccess"
            case securityGroupIds = "securityGroupIds"
            case subnetIds = "subnetIds"
            case vpcId = "vpcId"
        }
    }

}
