// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Shield
public enum ShieldErrorType: AWSErrorType {
    case internalErrorException(message: String?)
    case lockedSubscriptionException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidOperationException(message: String?)
    case optimisticLockException(message: String?)
    case noAssociatedRoleException(message: String?)
    case limitsExceededException(message: String?)
    case accessDeniedForDependencyException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case accessDeniedException(message: String?)
    case invalidResourceException(message: String?)
}

extension ShieldErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "LockedSubscriptionException":
            self = .lockedSubscriptionException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "OptimisticLockException":
            self = .optimisticLockException(message: message)
        case "NoAssociatedRoleException":
            self = .noAssociatedRoleException(message: message)
        case "LimitsExceededException":
            self = .limitsExceededException(message: message)
        case "AccessDeniedForDependencyException":
            self = .accessDeniedForDependencyException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InvalidResourceException":
            self = .invalidResourceException(message: message)
        default:
            return nil
        }
    }
}