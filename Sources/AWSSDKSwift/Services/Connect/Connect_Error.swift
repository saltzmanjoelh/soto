// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Connect
public enum ConnectErrorType: AWSErrorType {
    case contactNotFoundException(message: String?)
    case destinationNotAllowedException(message: String?)
    case duplicateResourceException(message: String?)
    case internalServiceException(message: String?)
    case invalidParameterException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case outboundContactNotPermittedException(message: String?)
    case resourceNotFoundException(message: String?)
    case throttlingException(message: String?)
    case userNotFoundException(message: String?)
}

extension ConnectErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ContactNotFoundException":
            self = .contactNotFoundException(message: message)
        case "DestinationNotAllowedException":
            self = .destinationNotAllowedException(message: message)
        case "DuplicateResourceException":
            self = .duplicateResourceException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "OutboundContactNotPermittedException":
            self = .outboundContactNotPermittedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UserNotFoundException":
            self = .userNotFoundException(message: message)
        default:
            return nil
        }
    }
}
