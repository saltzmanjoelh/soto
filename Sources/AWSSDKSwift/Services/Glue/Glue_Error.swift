// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Glue
public enum GlueErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case alreadyExistsException(message: String?)
    case concurrentModificationException(message: String?)
    case concurrentRunsExceededException(message: String?)
    case conditionCheckFailureException(message: String?)
    case crawlerNotRunningException(message: String?)
    case crawlerRunningException(message: String?)
    case crawlerStoppingException(message: String?)
    case entityNotFoundException(message: String?)
    case glueEncryptionException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case internalServiceException(message: String?)
    case invalidInputException(message: String?)
    case noScheduleException(message: String?)
    case operationTimeoutException(message: String?)
    case resourceNumberLimitExceededException(message: String?)
    case schedulerNotRunningException(message: String?)
    case schedulerRunningException(message: String?)
    case schedulerTransitioningException(message: String?)
    case validationException(message: String?)
    case versionMismatchException(message: String?)
}

extension GlueErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ConcurrentRunsExceededException":
            self = .concurrentRunsExceededException(message: message)
        case "ConditionCheckFailureException":
            self = .conditionCheckFailureException(message: message)
        case "CrawlerNotRunningException":
            self = .crawlerNotRunningException(message: message)
        case "CrawlerRunningException":
            self = .crawlerRunningException(message: message)
        case "CrawlerStoppingException":
            self = .crawlerStoppingException(message: message)
        case "EntityNotFoundException":
            self = .entityNotFoundException(message: message)
        case "GlueEncryptionException":
            self = .glueEncryptionException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "NoScheduleException":
            self = .noScheduleException(message: message)
        case "OperationTimeoutException":
            self = .operationTimeoutException(message: message)
        case "ResourceNumberLimitExceededException":
            self = .resourceNumberLimitExceededException(message: message)
        case "SchedulerNotRunningException":
            self = .schedulerNotRunningException(message: message)
        case "SchedulerRunningException":
            self = .schedulerRunningException(message: message)
        case "SchedulerTransitioningException":
            self = .schedulerTransitioningException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        case "VersionMismatchException":
            self = .versionMismatchException(message: message)
        default:
            return nil
        }
    }
}
