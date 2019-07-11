// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for STS
public enum STSErrorType: AWSErrorType {
    case expiredTokenException(message: String?)
    case iDPCommunicationErrorException(message: String?)
    case iDPRejectedClaimException(message: String?)
    case invalidAuthorizationMessageException(message: String?)
    case invalidIdentityTokenException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case packedPolicyTooLargeException(message: String?)
    case regionDisabledException(message: String?)
}

extension STSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "IDPCommunicationErrorException":
            self = .iDPCommunicationErrorException(message: message)
        case "IDPRejectedClaimException":
            self = .iDPRejectedClaimException(message: message)
        case "InvalidAuthorizationMessageException":
            self = .invalidAuthorizationMessageException(message: message)
        case "InvalidIdentityTokenException":
            self = .invalidIdentityTokenException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "PackedPolicyTooLargeException":
            self = .packedPolicyTooLargeException(message: message)
        case "RegionDisabledException":
            self = .regionDisabledException(message: message)
        default:
            return nil
        }
    }
}
