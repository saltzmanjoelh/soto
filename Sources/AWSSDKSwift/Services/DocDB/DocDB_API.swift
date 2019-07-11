// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon DocumentDB API documentation
*/
public struct DocDB {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "rds",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2014-10-31",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [DocDBErrorType.self]
        )
    }

    ///  Adds metadata tags to an Amazon DocumentDB resource. You can use these tags with cost allocation reporting to track costs that are associated with Amazon DocumentDB resources. or in a Condition statement in an AWS Identity and Access Management (IAM) policy for Amazon DocumentDB.
    @discardableResult public func addTagsToResource(_ input: AddTagsToResourceMessage) throws -> Future<Void> {
        return try client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a pending maintenance action to a resource (for example, to a DB instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage) throws -> Future<ApplyPendingMaintenanceActionResult> {
        return try client.send(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies the specified DB cluster parameter group.
    public func copyDBClusterParameterGroup(_ input: CopyDBClusterParameterGroupMessage) throws -> Future<CopyDBClusterParameterGroupResult> {
        return try client.send(operation: "CopyDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies a snapshot of a DB cluster. To copy a DB cluster snapshot from a shared manual DB cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot. To cancel the copy operation after it is in progress, delete the target DB cluster snapshot identified by TargetDBClusterSnapshotIdentifier while that DB cluster snapshot is in the copying status.
    public func copyDBClusterSnapshot(_ input: CopyDBClusterSnapshotMessage) throws -> Future<CopyDBClusterSnapshotResult> {
        return try client.send(operation: "CopyDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Amazon DocumentDB DB cluster.
    public func createDBCluster(_ input: CreateDBClusterMessage) throws -> Future<CreateDBClusterResult> {
        return try client.send(operation: "CreateDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB cluster parameter group. Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster. A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after you create it. After you create a DB cluster parameter group, you must associate it with your DB cluster. For the new DB cluster parameter group and associated settings to take effect, you must then reboot the DB instances in the DB cluster without failover.  After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This step is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. 
    public func createDBClusterParameterGroup(_ input: CreateDBClusterParameterGroupMessage) throws -> Future<CreateDBClusterParameterGroupResult> {
        return try client.send(operation: "CreateDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a DB cluster. 
    public func createDBClusterSnapshot(_ input: CreateDBClusterSnapshotMessage) throws -> Future<CreateDBClusterSnapshotResult> {
        return try client.send(operation: "CreateDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB instance.
    public func createDBInstance(_ input: CreateDBInstanceMessage) throws -> Future<CreateDBInstanceResult> {
        return try client.send(operation: "CreateDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
    public func createDBSubnetGroup(_ input: CreateDBSubnetGroupMessage) throws -> Future<CreateDBSubnetGroupResult> {
        return try client.send(operation: "CreateDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted. 
    public func deleteDBCluster(_ input: DeleteDBClusterMessage) throws -> Future<DeleteDBClusterResult> {
        return try client.send(operation: "DeleteDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.
    @discardableResult public func deleteDBClusterParameterGroup(_ input: DeleteDBClusterParameterGroupMessage) throws -> Future<Void> {
        return try client.send(operation: "DeleteDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The DB cluster snapshot must be in the available state to be deleted. 
    public func deleteDBClusterSnapshot(_ input: DeleteDBClusterSnapshotMessage) throws -> Future<DeleteDBClusterSnapshotResult> {
        return try client.send(operation: "DeleteDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously provisioned DB instance. 
    public func deleteDBInstance(_ input: DeleteDBInstanceMessage) throws -> Future<DeleteDBInstanceResult> {
        return try client.send(operation: "DeleteDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a DB subnet group.  The specified database subnet group must not be associated with any DB instances. 
    @discardableResult public func deleteDBSubnetGroup(_ input: DeleteDBSubnetGroupMessage) throws -> Future<Void> {
        return try client.send(operation: "DeleteDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list contains only the description of the specified DB cluster parameter group. 
    public func describeDBClusterParameterGroups(_ input: DescribeDBClusterParameterGroupsMessage) throws -> Future<DBClusterParameterGroupsMessage> {
        return try client.send(operation: "DescribeDBClusterParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular DB cluster parameter group.
    public func describeDBClusterParameters(_ input: DescribeDBClusterParametersMessage) throws -> Future<DBClusterParameterGroupDetails> {
        return try client.send(operation: "DescribeDBClusterParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot. When you share snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If all is included in the list of values for the restore attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.
    public func describeDBClusterSnapshotAttributes(_ input: DescribeDBClusterSnapshotAttributesMessage) throws -> Future<DescribeDBClusterSnapshotAttributesResult> {
        return try client.send(operation: "DescribeDBClusterSnapshotAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about DB cluster snapshots. This API operation supports pagination.
    public func describeDBClusterSnapshots(_ input: DescribeDBClusterSnapshotsMessage) throws -> Future<DBClusterSnapshotMessage> {
        return try client.send(operation: "DescribeDBClusterSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about provisioned Amazon DocumentDB DB clusters. This API operation supports pagination.
    public func describeDBClusters(_ input: DescribeDBClustersMessage) throws -> Future<DBClusterMessage> {
        return try client.send(operation: "DescribeDBClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the available DB engines.
    public func describeDBEngineVersions(_ input: DescribeDBEngineVersionsMessage) throws -> Future<DBEngineVersionMessage> {
        return try client.send(operation: "DescribeDBEngineVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
    public func describeDBInstances(_ input: DescribeDBInstancesMessage) throws -> Future<DBInstanceMessage> {
        return try client.send(operation: "DescribeDBInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
    public func describeDBSubnetGroups(_ input: DescribeDBSubnetGroupsMessage) throws -> Future<DBSubnetGroupMessage> {
        return try client.send(operation: "DescribeDBSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default engine and system parameter information for the cluster database engine.
    public func describeEngineDefaultClusterParameters(_ input: DescribeEngineDefaultClusterParametersMessage) throws -> Future<DescribeEngineDefaultClusterParametersResult> {
        return try client.send(operation: "DescribeEngineDefaultClusterParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays a list of categories for all event source types, or, if specified, for a specified source type. 
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage) throws -> Future<EventCategoriesMessage> {
        return try client.send(operation: "DescribeEventCategories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, DB security group, DB snapshot, or DB parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
    public func describeEvents(_ input: DescribeEventsMessage) throws -> Future<EventsMessage> {
        return try client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of orderable DB instance options for the specified engine.
    public func describeOrderableDBInstanceOptions(_ input: DescribeOrderableDBInstanceOptionsMessage) throws -> Future<OrderableDBInstanceOptionsMessage> {
        return try client.send(operation: "DescribeOrderableDBInstanceOptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage) throws -> Future<PendingMaintenanceActionsMessage> {
        return try client.send(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Forces a failover for a DB cluster. A failover for a DB cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer). If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.
    public func failoverDBCluster(_ input: FailoverDBClusterMessage) throws -> Future<FailoverDBClusterResult> {
        return try client.send(operation: "FailoverDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags on an Amazon DocumentDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage) throws -> Future<TagListMessage> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies a setting for an Amazon DocumentDB DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. 
    public func modifyDBCluster(_ input: ModifyDBClusterMessage) throws -> Future<ModifyDBClusterResult> {
        return try client.send(operation: "ModifyDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///   Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.   Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot or maintenance window before the change can take effect.   After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the parameter group is used as the default for a new DB cluster. This step is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. 
    public func modifyDBClusterParameterGroup(_ input: ModifyDBClusterParameterGroupMessage) throws -> Future<DBClusterParameterGroupNameMessage> {
        return try client.send(operation: "ModifyDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual DB cluster snapshot with other AWS accounts, specify restore as the AttributeName, and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value all to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case.
    public func modifyDBClusterSnapshotAttribute(_ input: ModifyDBClusterSnapshotAttributeMessage) throws -> Future<ModifyDBClusterSnapshotAttributeResult> {
        return try client.send(operation: "ModifyDBClusterSnapshotAttribute", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
    public func modifyDBInstance(_ input: ModifyDBInstanceMessage) throws -> Future<ModifyDBInstanceResult> {
        return try client.send(operation: "ModifyDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.
    public func modifyDBSubnetGroup(_ input: ModifyDBSubnetGroupMessage) throws -> Future<ModifyDBSubnetGroupResult> {
        return try client.send(operation: "ModifyDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain changes, or if you change the DB cluster parameter group that is associated with the DB instance, you must reboot the instance for the changes to take effect.  Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting. 
    public func rebootDBInstance(_ input: RebootDBInstanceMessage) throws -> Future<RebootDBInstanceResult> {
        return try client.send(operation: "RebootDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes metadata tags from an Amazon DocumentDB resource.
    @discardableResult public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage) throws -> Future<Void> {
        return try client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters, submit a list of the following: ParameterName and ApplyMethod. To reset the entire DB cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.   When you reset the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance reboot.
    public func resetDBClusterParameterGroup(_ input: ResetDBClusterParameterGroupMessage) throws -> Future<DBClusterParameterGroupNameMessage> {
        return try client.send(operation: "ResetDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB cluster from a DB snapshot or DB cluster snapshot. If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group. If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.
    public func restoreDBClusterFromSnapshot(_ input: RestoreDBClusterFromSnapshotMessage) throws -> Future<RestoreDBClusterFromSnapshotResult> {
        return try client.send(operation: "RestoreDBClusterFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. 
    public func restoreDBClusterToPointInTime(_ input: RestoreDBClusterToPointInTimeMessage) throws -> Future<RestoreDBClusterToPointInTimeResult> {
        return try client.send(operation: "RestoreDBClusterToPointInTime", path: "/", httpMethod: "POST", input: input)
    }


}
