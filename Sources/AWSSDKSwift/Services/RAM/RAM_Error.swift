// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for RAM
public enum RAMErrorType: AWSErrorType {
    case idempotentParameterMismatchException(message: String?)
    case invalidClientTokenException(message: String?)
    case invalidMaxResultsException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidResourceTypeException(message: String?)
    case invalidStateTransitionException(message: String?)
    case malformedArnException(message: String?)
    case missingRequiredParameterException(message: String?)
    case operationNotPermittedException(message: String?)
    case resourceArnNotFoundException(message: String?)
    case resourceShareInvitationAlreadyAcceptedException(message: String?)
    case resourceShareInvitationAlreadyRejectedException(message: String?)
    case resourceShareInvitationArnNotFoundException(message: String?)
    case resourceShareInvitationExpiredException(message: String?)
    case resourceShareLimitExceededException(message: String?)
    case serverInternalException(message: String?)
    case serviceUnavailableException(message: String?)
    case tagLimitExceededException(message: String?)
    case unknownResourceException(message: String?)
}

extension RAMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InvalidClientTokenException":
            self = .invalidClientTokenException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidResourceTypeException":
            self = .invalidResourceTypeException(message: message)
        case "InvalidStateTransitionException":
            self = .invalidStateTransitionException(message: message)
        case "MalformedArnException":
            self = .malformedArnException(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ResourceArnNotFoundException":
            self = .resourceArnNotFoundException(message: message)
        case "ResourceShareInvitationAlreadyAcceptedException":
            self = .resourceShareInvitationAlreadyAcceptedException(message: message)
        case "ResourceShareInvitationAlreadyRejectedException":
            self = .resourceShareInvitationAlreadyRejectedException(message: message)
        case "ResourceShareInvitationArnNotFoundException":
            self = .resourceShareInvitationArnNotFoundException(message: message)
        case "ResourceShareInvitationExpiredException":
            self = .resourceShareInvitationExpiredException(message: message)
        case "ResourceShareLimitExceededException":
            self = .resourceShareLimitExceededException(message: message)
        case "ServerInternalException":
            self = .serverInternalException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "UnknownResourceException":
            self = .unknownResourceException(message: message)
        default:
            return nil
        }
    }
}
