// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Greengrass
public enum GreengrassErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case internalServerErrorException(message: String?)
}

extension GreengrassErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        default:
            return nil
        }
    }
}
