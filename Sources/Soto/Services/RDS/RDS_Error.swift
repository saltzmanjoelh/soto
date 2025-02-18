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

/// Error enum for RDS
public struct RDSErrorType: AWSErrorType {
    enum Code: String {
        case authorizationAlreadyExistsFault = "AuthorizationAlreadyExists"
        case authorizationNotFoundFault = "AuthorizationNotFound"
        case authorizationQuotaExceededFault = "AuthorizationQuotaExceeded"
        case backupPolicyNotFoundFault = "BackupPolicyNotFoundFault"
        case certificateNotFoundFault = "CertificateNotFound"
        case customAvailabilityZoneAlreadyExistsFault = "CustomAvailabilityZoneAlreadyExists"
        case customAvailabilityZoneNotFoundFault = "CustomAvailabilityZoneNotFound"
        case customAvailabilityZoneQuotaExceededFault = "CustomAvailabilityZoneQuotaExceeded"
        case dBClusterAlreadyExistsFault = "DBClusterAlreadyExistsFault"
        case dBClusterBacktrackNotFoundFault = "DBClusterBacktrackNotFoundFault"
        case dBClusterEndpointAlreadyExistsFault = "DBClusterEndpointAlreadyExistsFault"
        case dBClusterEndpointNotFoundFault = "DBClusterEndpointNotFoundFault"
        case dBClusterEndpointQuotaExceededFault = "DBClusterEndpointQuotaExceededFault"
        case dBClusterNotFoundFault = "DBClusterNotFoundFault"
        case dBClusterParameterGroupNotFoundFault = "DBClusterParameterGroupNotFound"
        case dBClusterQuotaExceededFault = "DBClusterQuotaExceededFault"
        case dBClusterRoleAlreadyExistsFault = "DBClusterRoleAlreadyExists"
        case dBClusterRoleNotFoundFault = "DBClusterRoleNotFound"
        case dBClusterRoleQuotaExceededFault = "DBClusterRoleQuotaExceeded"
        case dBClusterSnapshotAlreadyExistsFault = "DBClusterSnapshotAlreadyExistsFault"
        case dBClusterSnapshotNotFoundFault = "DBClusterSnapshotNotFoundFault"
        case dBInstanceAlreadyExistsFault = "DBInstanceAlreadyExists"
        case dBInstanceAutomatedBackupNotFoundFault = "DBInstanceAutomatedBackupNotFound"
        case dBInstanceAutomatedBackupQuotaExceededFault = "DBInstanceAutomatedBackupQuotaExceeded"
        case dBInstanceNotFoundFault = "DBInstanceNotFound"
        case dBInstanceRoleAlreadyExistsFault = "DBInstanceRoleAlreadyExists"
        case dBInstanceRoleNotFoundFault = "DBInstanceRoleNotFound"
        case dBInstanceRoleQuotaExceededFault = "DBInstanceRoleQuotaExceeded"
        case dBLogFileNotFoundFault = "DBLogFileNotFoundFault"
        case dBParameterGroupAlreadyExistsFault = "DBParameterGroupAlreadyExists"
        case dBParameterGroupNotFoundFault = "DBParameterGroupNotFound"
        case dBParameterGroupQuotaExceededFault = "DBParameterGroupQuotaExceeded"
        case dBProxyAlreadyExistsFault = "DBProxyTargetExistsFault"
        case dBProxyNotFoundFault = "DBProxyNotFoundFault"
        case dBProxyQuotaExceededFault = "DBProxyQuotaExceededFault"
        case dBProxyTargetAlreadyRegisteredFault = "DBProxyTargetAlreadyRegisteredFault"
        case dBProxyTargetGroupNotFoundFault = "DBProxyTargetGroupNotFoundFault"
        case dBProxyTargetNotFoundFault = "DBProxyTargetNotFoundFault"
        case dBSecurityGroupAlreadyExistsFault = "DBSecurityGroupAlreadyExists"
        case dBSecurityGroupNotFoundFault = "DBSecurityGroupNotFound"
        case dBSecurityGroupNotSupportedFault = "DBSecurityGroupNotSupported"
        case dBSecurityGroupQuotaExceededFault = "QuotaExceeded.DBSecurityGroup"
        case dBSnapshotAlreadyExistsFault = "DBSnapshotAlreadyExists"
        case dBSnapshotNotFoundFault = "DBSnapshotNotFound"
        case dBSubnetGroupAlreadyExistsFault = "DBSubnetGroupAlreadyExists"
        case dBSubnetGroupDoesNotCoverEnoughAZs = "DBSubnetGroupDoesNotCoverEnoughAZs"
        case dBSubnetGroupNotAllowedFault = "DBSubnetGroupNotAllowedFault"
        case dBSubnetGroupNotFoundFault = "DBSubnetGroupNotFoundFault"
        case dBSubnetGroupQuotaExceededFault = "DBSubnetGroupQuotaExceeded"
        case dBSubnetQuotaExceededFault = "DBSubnetQuotaExceededFault"
        case dBUpgradeDependencyFailureFault = "DBUpgradeDependencyFailure"
        case domainNotFoundFault = "DomainNotFoundFault"
        case eventSubscriptionQuotaExceededFault = "EventSubscriptionQuotaExceeded"
        case exportTaskAlreadyExistsFault = "ExportTaskAlreadyExists"
        case exportTaskNotFoundFault = "ExportTaskNotFound"
        case globalClusterAlreadyExistsFault = "GlobalClusterAlreadyExistsFault"
        case globalClusterNotFoundFault = "GlobalClusterNotFoundFault"
        case globalClusterQuotaExceededFault = "GlobalClusterQuotaExceededFault"
        case iamRoleMissingPermissionsFault = "IamRoleMissingPermissions"
        case iamRoleNotFoundFault = "IamRoleNotFound"
        case installationMediaAlreadyExistsFault = "InstallationMediaAlreadyExists"
        case installationMediaNotFoundFault = "InstallationMediaNotFound"
        case instanceQuotaExceededFault = "InstanceQuotaExceeded"
        case insufficientAvailableIPsInSubnetFault = "InsufficientAvailableIPsInSubnetFault"
        case insufficientDBClusterCapacityFault = "InsufficientDBClusterCapacityFault"
        case insufficientDBInstanceCapacityFault = "InsufficientDBInstanceCapacity"
        case insufficientStorageClusterCapacityFault = "InsufficientStorageClusterCapacity"
        case invalidDBClusterCapacityFault = "InvalidDBClusterCapacityFault"
        case invalidDBClusterEndpointStateFault = "InvalidDBClusterEndpointStateFault"
        case invalidDBClusterSnapshotStateFault = "InvalidDBClusterSnapshotStateFault"
        case invalidDBClusterStateFault = "InvalidDBClusterStateFault"
        case invalidDBInstanceAutomatedBackupStateFault = "InvalidDBInstanceAutomatedBackupState"
        case invalidDBInstanceStateFault = "InvalidDBInstanceState"
        case invalidDBParameterGroupStateFault = "InvalidDBParameterGroupState"
        case invalidDBProxyStateFault = "InvalidDBProxyStateFault"
        case invalidDBSecurityGroupStateFault = "InvalidDBSecurityGroupState"
        case invalidDBSnapshotStateFault = "InvalidDBSnapshotState"
        case invalidDBSubnetGroupFault = "InvalidDBSubnetGroupFault"
        case invalidDBSubnetGroupStateFault = "InvalidDBSubnetGroupStateFault"
        case invalidDBSubnetStateFault = "InvalidDBSubnetStateFault"
        case invalidEventSubscriptionStateFault = "InvalidEventSubscriptionState"
        case invalidExportOnlyFault = "InvalidExportOnly"
        case invalidExportSourceStateFault = "InvalidExportSourceState"
        case invalidExportTaskStateFault = "InvalidExportTaskStateFault"
        case invalidGlobalClusterStateFault = "InvalidGlobalClusterStateFault"
        case invalidOptionGroupStateFault = "InvalidOptionGroupStateFault"
        case invalidRestoreFault = "InvalidRestoreFault"
        case invalidS3BucketFault = "InvalidS3BucketFault"
        case invalidSubnet = "InvalidSubnet"
        case invalidVPCNetworkStateFault = "InvalidVPCNetworkStateFault"
        case kMSKeyNotAccessibleFault = "KMSKeyNotAccessibleFault"
        case optionGroupAlreadyExistsFault = "OptionGroupAlreadyExistsFault"
        case optionGroupNotFoundFault = "OptionGroupNotFoundFault"
        case optionGroupQuotaExceededFault = "OptionGroupQuotaExceededFault"
        case pointInTimeRestoreNotEnabledFault = "PointInTimeRestoreNotEnabled"
        case provisionedIopsNotAvailableInAZFault = "ProvisionedIopsNotAvailableInAZFault"
        case reservedDBInstanceAlreadyExistsFault = "ReservedDBInstanceAlreadyExists"
        case reservedDBInstanceNotFoundFault = "ReservedDBInstanceNotFound"
        case reservedDBInstanceQuotaExceededFault = "ReservedDBInstanceQuotaExceeded"
        case reservedDBInstancesOfferingNotFoundFault = "ReservedDBInstancesOfferingNotFound"
        case resourceNotFoundFault = "ResourceNotFoundFault"
        case sNSInvalidTopicFault = "SNSInvalidTopic"
        case sNSNoAuthorizationFault = "SNSNoAuthorization"
        case sNSTopicArnNotFoundFault = "SNSTopicArnNotFound"
        case sharedSnapshotQuotaExceededFault = "SharedSnapshotQuotaExceeded"
        case snapshotQuotaExceededFault = "SnapshotQuotaExceeded"
        case sourceNotFoundFault = "SourceNotFound"
        case storageQuotaExceededFault = "StorageQuotaExceeded"
        case storageTypeNotSupportedFault = "StorageTypeNotSupported"
        case subnetAlreadyInUse = "SubnetAlreadyInUse"
        case subscriptionAlreadyExistFault = "SubscriptionAlreadyExist"
        case subscriptionCategoryNotFoundFault = "SubscriptionCategoryNotFound"
        case subscriptionNotFoundFault = "SubscriptionNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RDS
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

    /// The specified CIDR IP range or Amazon EC2 security group is already authorized for the specified DB security group.
    public static var authorizationAlreadyExistsFault: Self { .init(.authorizationAlreadyExistsFault) }
    /// The specified CIDR IP range or Amazon EC2 security group might not be authorized for the specified DB security group. Or, RDS might not be authorized to perform necessary actions using IAM on your behalf.
    public static var authorizationNotFoundFault: Self { .init(.authorizationNotFoundFault) }
    /// The DB security group authorization quota has been reached.
    public static var authorizationQuotaExceededFault: Self { .init(.authorizationQuotaExceededFault) }
    public static var backupPolicyNotFoundFault: Self { .init(.backupPolicyNotFoundFault) }
    ///  CertificateIdentifier doesn't refer to an existing certificate.
    public static var certificateNotFoundFault: Self { .init(.certificateNotFoundFault) }
    ///  CustomAvailabilityZoneName is already used by an existing custom Availability Zone.
    public static var customAvailabilityZoneAlreadyExistsFault: Self { .init(.customAvailabilityZoneAlreadyExistsFault) }
    ///  CustomAvailabilityZoneId doesn't refer to an existing custom Availability Zone identifier.
    public static var customAvailabilityZoneNotFoundFault: Self { .init(.customAvailabilityZoneNotFoundFault) }
    /// You have exceeded the maximum number of custom Availability Zones.
    public static var customAvailabilityZoneQuotaExceededFault: Self { .init(.customAvailabilityZoneQuotaExceededFault) }
    /// The user already has a DB cluster with the given identifier.
    public static var dBClusterAlreadyExistsFault: Self { .init(.dBClusterAlreadyExistsFault) }
    ///  BacktrackIdentifier doesn't refer to an existing backtrack.
    public static var dBClusterBacktrackNotFoundFault: Self { .init(.dBClusterBacktrackNotFoundFault) }
    /// The specified custom endpoint can't be created because it already exists.
    public static var dBClusterEndpointAlreadyExistsFault: Self { .init(.dBClusterEndpointAlreadyExistsFault) }
    /// The specified custom endpoint doesn't exist.
    public static var dBClusterEndpointNotFoundFault: Self { .init(.dBClusterEndpointNotFoundFault) }
    /// The cluster already has the maximum number of custom endpoints.
    public static var dBClusterEndpointQuotaExceededFault: Self { .init(.dBClusterEndpointQuotaExceededFault) }
    ///  DBClusterIdentifier doesn't refer to an existing DB cluster.
    public static var dBClusterNotFoundFault: Self { .init(.dBClusterNotFoundFault) }
    ///  DBClusterParameterGroupName doesn't refer to an existing DB cluster parameter group.
    public static var dBClusterParameterGroupNotFoundFault: Self { .init(.dBClusterParameterGroupNotFoundFault) }
    /// The user attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.
    public static var dBClusterQuotaExceededFault: Self { .init(.dBClusterQuotaExceededFault) }
    /// The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.
    public static var dBClusterRoleAlreadyExistsFault: Self { .init(.dBClusterRoleAlreadyExistsFault) }
    /// The specified IAM role Amazon Resource Name (ARN) isn't associated with the specified DB cluster.
    public static var dBClusterRoleNotFoundFault: Self { .init(.dBClusterRoleNotFoundFault) }
    /// You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.
    public static var dBClusterRoleQuotaExceededFault: Self { .init(.dBClusterRoleQuotaExceededFault) }
    /// The user already has a DB cluster snapshot with the given identifier.
    public static var dBClusterSnapshotAlreadyExistsFault: Self { .init(.dBClusterSnapshotAlreadyExistsFault) }
    ///  DBClusterSnapshotIdentifier doesn't refer to an existing DB cluster snapshot.
    public static var dBClusterSnapshotNotFoundFault: Self { .init(.dBClusterSnapshotNotFoundFault) }
    /// The user already has a DB instance with the given identifier.
    public static var dBInstanceAlreadyExistsFault: Self { .init(.dBInstanceAlreadyExistsFault) }
    /// No automated backup for this DB instance was found.
    public static var dBInstanceAutomatedBackupNotFoundFault: Self { .init(.dBInstanceAutomatedBackupNotFoundFault) }
    /// The quota for retained automated backups was exceeded. This prevents you from retaining any additional automated backups. The retained automated backups quota is the same as your DB Instance quota.
    public static var dBInstanceAutomatedBackupQuotaExceededFault: Self { .init(.dBInstanceAutomatedBackupQuotaExceededFault) }
    ///  DBInstanceIdentifier doesn't refer to an existing DB instance.
    public static var dBInstanceNotFoundFault: Self { .init(.dBInstanceNotFoundFault) }
    /// The specified RoleArn or FeatureName value is already associated with the DB instance.
    public static var dBInstanceRoleAlreadyExistsFault: Self { .init(.dBInstanceRoleAlreadyExistsFault) }
    /// The specified RoleArn value doesn't match the specified feature for the DB instance.
    public static var dBInstanceRoleNotFoundFault: Self { .init(.dBInstanceRoleNotFoundFault) }
    /// You can't associate any more AWS Identity and Access Management (IAM) roles with the DB instance because the quota has been reached.
    public static var dBInstanceRoleQuotaExceededFault: Self { .init(.dBInstanceRoleQuotaExceededFault) }
    ///  LogFileName doesn't refer to an existing DB log file.
    public static var dBLogFileNotFoundFault: Self { .init(.dBLogFileNotFoundFault) }
    /// A DB parameter group with the same name exists.
    public static var dBParameterGroupAlreadyExistsFault: Self { .init(.dBParameterGroupAlreadyExistsFault) }
    ///  DBParameterGroupName doesn't refer to an existing DB parameter group.
    public static var dBParameterGroupNotFoundFault: Self { .init(.dBParameterGroupNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of DB parameter groups.
    public static var dBParameterGroupQuotaExceededFault: Self { .init(.dBParameterGroupQuotaExceededFault) }
    /// The specified proxy name must be unique for all proxies owned by your AWS account in the specified AWS Region.
    public static var dBProxyAlreadyExistsFault: Self { .init(.dBProxyAlreadyExistsFault) }
    /// The specified proxy name doesn't correspond to a proxy owned by your AWS account in the specified AWS Region.
    public static var dBProxyNotFoundFault: Self { .init(.dBProxyNotFoundFault) }
    /// Your AWS account already has the maximum number of proxies in the specified AWS Region.
    public static var dBProxyQuotaExceededFault: Self { .init(.dBProxyQuotaExceededFault) }
    /// The proxy is already associated with the specified RDS DB instance or Aurora DB cluster.
    public static var dBProxyTargetAlreadyRegisteredFault: Self { .init(.dBProxyTargetAlreadyRegisteredFault) }
    /// The specified target group isn't available for a proxy owned by your AWS account in the specified AWS Region.
    public static var dBProxyTargetGroupNotFoundFault: Self { .init(.dBProxyTargetGroupNotFoundFault) }
    /// The specified RDS DB instance or Aurora DB cluster isn't available for a proxy owned by your AWS account in the specified AWS Region.
    public static var dBProxyTargetNotFoundFault: Self { .init(.dBProxyTargetNotFoundFault) }
    ///  A DB security group with the name specified in DBSecurityGroupName already exists.
    public static var dBSecurityGroupAlreadyExistsFault: Self { .init(.dBSecurityGroupAlreadyExistsFault) }
    ///  DBSecurityGroupName doesn't refer to an existing DB security group.
    public static var dBSecurityGroupNotFoundFault: Self { .init(.dBSecurityGroupNotFoundFault) }
    /// A DB security group isn't allowed for this action.
    public static var dBSecurityGroupNotSupportedFault: Self { .init(.dBSecurityGroupNotSupportedFault) }
    /// The request would result in the user exceeding the allowed number of DB security groups.
    public static var dBSecurityGroupQuotaExceededFault: Self { .init(.dBSecurityGroupQuotaExceededFault) }
    ///  DBSnapshotIdentifier is already used by an existing snapshot.
    public static var dBSnapshotAlreadyExistsFault: Self { .init(.dBSnapshotAlreadyExistsFault) }
    ///  DBSnapshotIdentifier doesn't refer to an existing DB snapshot.
    public static var dBSnapshotNotFoundFault: Self { .init(.dBSnapshotNotFoundFault) }
    ///  DBSubnetGroupName is already used by an existing DB subnet group.
    public static var dBSubnetGroupAlreadyExistsFault: Self { .init(.dBSubnetGroupAlreadyExistsFault) }
    /// Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.
    public static var dBSubnetGroupDoesNotCoverEnoughAZs: Self { .init(.dBSubnetGroupDoesNotCoverEnoughAZs) }
    /// The DBSubnetGroup shouldn't be specified while creating read replicas that lie in the same region as the source instance.
    public static var dBSubnetGroupNotAllowedFault: Self { .init(.dBSubnetGroupNotAllowedFault) }
    ///  DBSubnetGroupName doesn't refer to an existing DB subnet group.
    public static var dBSubnetGroupNotFoundFault: Self { .init(.dBSubnetGroupNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of DB subnet groups.
    public static var dBSubnetGroupQuotaExceededFault: Self { .init(.dBSubnetGroupQuotaExceededFault) }
    /// The request would result in the user exceeding the allowed number of subnets in a DB subnet groups.
    public static var dBSubnetQuotaExceededFault: Self { .init(.dBSubnetQuotaExceededFault) }
    /// The DB upgrade failed because a resource the DB depends on can't be modified.
    public static var dBUpgradeDependencyFailureFault: Self { .init(.dBUpgradeDependencyFailureFault) }
    ///  Domain doesn't refer to an existing Active Directory domain.
    public static var domainNotFoundFault: Self { .init(.domainNotFoundFault) }
    /// You have reached the maximum number of event subscriptions.
    public static var eventSubscriptionQuotaExceededFault: Self { .init(.eventSubscriptionQuotaExceededFault) }
    /// You can't start an export task that's already running.
    public static var exportTaskAlreadyExistsFault: Self { .init(.exportTaskAlreadyExistsFault) }
    /// The export task doesn't exist.
    public static var exportTaskNotFoundFault: Self { .init(.exportTaskNotFoundFault) }
    /// The GlobalClusterIdentifier already exists. Choose a new global database identifier (unique name) to create a new global database cluster.
    public static var globalClusterAlreadyExistsFault: Self { .init(.globalClusterAlreadyExistsFault) }
    /// The GlobalClusterIdentifier doesn't refer to an existing global database cluster.
    public static var globalClusterNotFoundFault: Self { .init(.globalClusterNotFoundFault) }
    /// The number of global database clusters for this account is already at the maximum allowed.
    public static var globalClusterQuotaExceededFault: Self { .init(.globalClusterQuotaExceededFault) }
    /// The IAM role requires additional permissions to export to an Amazon S3 bucket.
    public static var iamRoleMissingPermissionsFault: Self { .init(.iamRoleMissingPermissionsFault) }
    /// The IAM role is missing for exporting to an Amazon S3 bucket.
    public static var iamRoleNotFoundFault: Self { .init(.iamRoleNotFoundFault) }
    /// The specified installation medium has already been imported.
    public static var installationMediaAlreadyExistsFault: Self { .init(.installationMediaAlreadyExistsFault) }
    ///  InstallationMediaID doesn't refer to an existing installation medium.
    public static var installationMediaNotFoundFault: Self { .init(.installationMediaNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of DB instances.
    public static var instanceQuotaExceededFault: Self { .init(.instanceQuotaExceededFault) }
    /// The requested operation can't be performed because there aren't enough available IP addresses in the proxy's subnets. Add more CIDR blocks to the VPC or remove IP address that aren't required from the subnets.
    public static var insufficientAvailableIPsInSubnetFault: Self { .init(.insufficientAvailableIPsInSubnetFault) }
    /// The DB cluster doesn't have enough capacity for the current operation.
    public static var insufficientDBClusterCapacityFault: Self { .init(.insufficientDBClusterCapacityFault) }
    /// The specified DB instance class isn't available in the specified Availability Zone.
    public static var insufficientDBInstanceCapacityFault: Self { .init(.insufficientDBInstanceCapacityFault) }
    /// There is insufficient storage available for the current action. You might be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.
    public static var insufficientStorageClusterCapacityFault: Self { .init(.insufficientStorageClusterCapacityFault) }
    ///  Capacity isn't a valid Aurora Serverless DB cluster capacity. Valid capacity values are 2, 4, 8, 16, 32, 64, 128, and 256.
    public static var invalidDBClusterCapacityFault: Self { .init(.invalidDBClusterCapacityFault) }
    /// The requested operation can't be performed on the endpoint while the endpoint is in this state.
    public static var invalidDBClusterEndpointStateFault: Self { .init(.invalidDBClusterEndpointStateFault) }
    /// The supplied value isn't a valid DB cluster snapshot state.
    public static var invalidDBClusterSnapshotStateFault: Self { .init(.invalidDBClusterSnapshotStateFault) }
    /// The requested operation can't be performed while the cluster is in this state.
    public static var invalidDBClusterStateFault: Self { .init(.invalidDBClusterStateFault) }
    /// The automated backup is in an invalid state. For example, this automated backup is associated with an active instance.
    public static var invalidDBInstanceAutomatedBackupStateFault: Self { .init(.invalidDBInstanceAutomatedBackupStateFault) }
    /// The DB instance isn't in a valid state.
    public static var invalidDBInstanceStateFault: Self { .init(.invalidDBInstanceStateFault) }
    /// The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you can't delete it when the parameter group is in this state.
    public static var invalidDBParameterGroupStateFault: Self { .init(.invalidDBParameterGroupStateFault) }
    /// The requested operation can't be performed while the proxy is in this state.
    public static var invalidDBProxyStateFault: Self { .init(.invalidDBProxyStateFault) }
    /// The state of the DB security group doesn't allow deletion.
    public static var invalidDBSecurityGroupStateFault: Self { .init(.invalidDBSecurityGroupStateFault) }
    /// The state of the DB snapshot doesn't allow deletion.
    public static var invalidDBSnapshotStateFault: Self { .init(.invalidDBSnapshotStateFault) }
    /// The DBSubnetGroup doesn't belong to the same VPC as that of an existing cross-region read replica of the same source instance.
    public static var invalidDBSubnetGroupFault: Self { .init(.invalidDBSubnetGroupFault) }
    /// The DB subnet group cannot be deleted because it's in use.
    public static var invalidDBSubnetGroupStateFault: Self { .init(.invalidDBSubnetGroupStateFault) }
    ///  The DB subnet isn't in the available state.
    public static var invalidDBSubnetStateFault: Self { .init(.invalidDBSubnetStateFault) }
    /// This error can occur if someone else is modifying a subscription. You should retry the action.
    public static var invalidEventSubscriptionStateFault: Self { .init(.invalidEventSubscriptionStateFault) }
    /// The export is invalid for exporting to an Amazon S3 bucket.
    public static var invalidExportOnlyFault: Self { .init(.invalidExportOnlyFault) }
    /// The state of the export snapshot is invalid for exporting to an Amazon S3 bucket.
    public static var invalidExportSourceStateFault: Self { .init(.invalidExportSourceStateFault) }
    /// You can't cancel an export task that has completed.
    public static var invalidExportTaskStateFault: Self { .init(.invalidExportTaskStateFault) }
    /// The global cluster is in an invalid state and can't perform the requested operation.
    public static var invalidGlobalClusterStateFault: Self { .init(.invalidGlobalClusterStateFault) }
    ///  The option group isn't in the available state.
    public static var invalidOptionGroupStateFault: Self { .init(.invalidOptionGroupStateFault) }
    /// Cannot restore from VPC backup to non-VPC DB instance.
    public static var invalidRestoreFault: Self { .init(.invalidRestoreFault) }
    /// The specified Amazon S3 bucket name can't be found or Amazon RDS isn't authorized to access the specified Amazon S3 bucket. Verify the SourceS3BucketName and S3IngestionRoleArn values and try again.
    public static var invalidS3BucketFault: Self { .init(.invalidS3BucketFault) }
    /// The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// The DB subnet group doesn't cover all Availability Zones after it's created because of users' change.
    public static var invalidVPCNetworkStateFault: Self { .init(.invalidVPCNetworkStateFault) }
    /// An error occurred accessing an AWS KMS key.
    public static var kMSKeyNotAccessibleFault: Self { .init(.kMSKeyNotAccessibleFault) }
    /// The option group you are trying to create already exists.
    public static var optionGroupAlreadyExistsFault: Self { .init(.optionGroupAlreadyExistsFault) }
    /// The specified option group could not be found.
    public static var optionGroupNotFoundFault: Self { .init(.optionGroupNotFoundFault) }
    /// The quota of 20 option groups was exceeded for this AWS account.
    public static var optionGroupQuotaExceededFault: Self { .init(.optionGroupQuotaExceededFault) }
    ///  SourceDBInstanceIdentifier refers to a DB instance with BackupRetentionPeriod equal to 0.
    public static var pointInTimeRestoreNotEnabledFault: Self { .init(.pointInTimeRestoreNotEnabledFault) }
    /// Provisioned IOPS not available in the specified Availability Zone.
    public static var provisionedIopsNotAvailableInAZFault: Self { .init(.provisionedIopsNotAvailableInAZFault) }
    /// User already has a reservation with the given identifier.
    public static var reservedDBInstanceAlreadyExistsFault: Self { .init(.reservedDBInstanceAlreadyExistsFault) }
    /// The specified reserved DB Instance not found.
    public static var reservedDBInstanceNotFoundFault: Self { .init(.reservedDBInstanceNotFoundFault) }
    /// Request would exceed the user's DB Instance quota.
    public static var reservedDBInstanceQuotaExceededFault: Self { .init(.reservedDBInstanceQuotaExceededFault) }
    /// Specified offering does not exist.
    public static var reservedDBInstancesOfferingNotFoundFault: Self { .init(.reservedDBInstancesOfferingNotFoundFault) }
    /// The specified resource ID was not found.
    public static var resourceNotFoundFault: Self { .init(.resourceNotFoundFault) }
    /// SNS has responded that there is a problem with the SND topic specified.
    public static var sNSInvalidTopicFault: Self { .init(.sNSInvalidTopicFault) }
    /// You do not have permission to publish to the SNS topic ARN.
    public static var sNSNoAuthorizationFault: Self { .init(.sNSNoAuthorizationFault) }
    /// The SNS topic ARN does not exist.
    public static var sNSTopicArnNotFoundFault: Self { .init(.sNSTopicArnNotFoundFault) }
    /// You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.
    public static var sharedSnapshotQuotaExceededFault: Self { .init(.sharedSnapshotQuotaExceededFault) }
    /// The request would result in the user exceeding the allowed number of DB snapshots.
    public static var snapshotQuotaExceededFault: Self { .init(.snapshotQuotaExceededFault) }
    /// The requested source could not be found.
    public static var sourceNotFoundFault: Self { .init(.sourceNotFoundFault) }
    /// The request would result in the user exceeding the allowed amount of storage available across all DB instances.
    public static var storageQuotaExceededFault: Self { .init(.storageQuotaExceededFault) }
    /// Storage of the StorageType specified can't be associated with the DB instance.
    public static var storageTypeNotSupportedFault: Self { .init(.storageTypeNotSupportedFault) }
    /// The DB subnet is already in use in the Availability Zone.
    public static var subnetAlreadyInUse: Self { .init(.subnetAlreadyInUse) }
    /// The supplied subscription name already exists.
    public static var subscriptionAlreadyExistFault: Self { .init(.subscriptionAlreadyExistFault) }
    /// The supplied category does not exist.
    public static var subscriptionCategoryNotFoundFault: Self { .init(.subscriptionCategoryNotFoundFault) }
    /// The subscription name does not exist.
    public static var subscriptionNotFoundFault: Self { .init(.subscriptionNotFoundFault) }
}

extension RDSErrorType: Equatable {
    public static func == (lhs: RDSErrorType, rhs: RDSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RDSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
