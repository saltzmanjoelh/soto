// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DynamoDB
public enum DynamoDBErrorType: AWSErrorType {
    case provisionedThroughputExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case itemCollectionSizeLimitExceededException(message: String?)
    case requestLimitExceeded(message: String?)
    case internalServerError(message: String?)
    case limitExceededException(message: String?)
    case resourceInUseException(message: String?)
    case tableNotFoundException(message: String?)
    case tableInUseException(message: String?)
    case continuousBackupsUnavailableException(message: String?)
    case backupInUseException(message: String?)
    case globalTableNotFoundException(message: String?)
    case replicaNotFoundException(message: String?)
    case indexNotFoundException(message: String?)
    case backupNotFoundException(message: String?)
    case transactionCanceledException(message: String?)
    case replicaAlreadyExistsException(message: String?)
    case globalTableAlreadyExistsException(message: String?)
    case tableAlreadyExistsException(message: String?)
    case invalidRestoreTimeException(message: String?)
    case pointInTimeRecoveryUnavailableException(message: String?)
    case conditionalCheckFailedException(message: String?)
    case transactionConflictException(message: String?)
    case transactionInProgressException(message: String?)
    case idempotentParameterMismatchException(message: String?)
}

extension DynamoDBErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ItemCollectionSizeLimitExceededException":
            self = .itemCollectionSizeLimitExceededException(message: message)
        case "RequestLimitExceeded":
            self = .requestLimitExceeded(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "TableNotFoundException":
            self = .tableNotFoundException(message: message)
        case "TableInUseException":
            self = .tableInUseException(message: message)
        case "ContinuousBackupsUnavailableException":
            self = .continuousBackupsUnavailableException(message: message)
        case "BackupInUseException":
            self = .backupInUseException(message: message)
        case "GlobalTableNotFoundException":
            self = .globalTableNotFoundException(message: message)
        case "ReplicaNotFoundException":
            self = .replicaNotFoundException(message: message)
        case "IndexNotFoundException":
            self = .indexNotFoundException(message: message)
        case "BackupNotFoundException":
            self = .backupNotFoundException(message: message)
        case "TransactionCanceledException":
            self = .transactionCanceledException(message: message)
        case "ReplicaAlreadyExistsException":
            self = .replicaAlreadyExistsException(message: message)
        case "GlobalTableAlreadyExistsException":
            self = .globalTableAlreadyExistsException(message: message)
        case "TableAlreadyExistsException":
            self = .tableAlreadyExistsException(message: message)
        case "InvalidRestoreTimeException":
            self = .invalidRestoreTimeException(message: message)
        case "PointInTimeRecoveryUnavailableException":
            self = .pointInTimeRecoveryUnavailableException(message: message)
        case "ConditionalCheckFailedException":
            self = .conditionalCheckFailedException(message: message)
        case "TransactionConflictException":
            self = .transactionConflictException(message: message)
        case "TransactionInProgressException":
            self = .transactionInProgressException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        default:
            return nil
        }
    }
}