// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ResourceGroupsTaggingAPI
public enum ResourceGroupsTaggingAPIErrorType: AWSErrorType {
    case internalServiceException(message: String?)
    case invalidParameterException(message: String?)
    case paginationTokenExpiredException(message: String?)
    case throttledException(message: String?)
}

extension ResourceGroupsTaggingAPIErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "PaginationTokenExpiredException":
            self = .paginationTokenExpiredException(message: message)
        case "ThrottledException":
            self = .throttledException(message: message)
        default:
            return nil
        }
    }
}
