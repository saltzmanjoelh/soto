// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudHSM
public enum CloudHSMErrorType: AWSErrorType {
    case cloudHsmInternalException(message: String?)
    case cloudHsmServiceException(message: String?)
    case invalidRequestException(message: String?)
}

extension CloudHSMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CloudHsmInternalException":
            self = .cloudHsmInternalException(message: message)
        case "CloudHsmServiceException":
            self = .cloudHsmServiceException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        default:
            return nil
        }
    }
}
