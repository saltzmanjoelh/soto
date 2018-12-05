// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ServiceDiscovery
public enum ServiceDiscoveryErrorType: AWSErrorType {
    case serviceNotFound(message: String?)
    case invalidInput(message: String?)
    case duplicateRequest(message: String?)
    case instanceNotFound(message: String?)
    case resourceInUse(message: String?)
    case namespaceAlreadyExists(message: String?)
    case resourceLimitExceeded(message: String?)
    case namespaceNotFound(message: String?)
    case serviceAlreadyExists(message: String?)
    case customHealthNotFound(message: String?)
    case operationNotFound(message: String?)
}

extension ServiceDiscoveryErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ServiceNotFound":
            self = .serviceNotFound(message: message)
        case "InvalidInput":
            self = .invalidInput(message: message)
        case "DuplicateRequest":
            self = .duplicateRequest(message: message)
        case "InstanceNotFound":
            self = .instanceNotFound(message: message)
        case "ResourceInUse":
            self = .resourceInUse(message: message)
        case "NamespaceAlreadyExists":
            self = .namespaceAlreadyExists(message: message)
        case "ResourceLimitExceeded":
            self = .resourceLimitExceeded(message: message)
        case "NamespaceNotFound":
            self = .namespaceNotFound(message: message)
        case "ServiceAlreadyExists":
            self = .serviceAlreadyExists(message: message)
        case "CustomHealthNotFound":
            self = .customHealthNotFound(message: message)
        case "OperationNotFound":
            self = .operationNotFound(message: message)
        default:
            return nil
        }
    }
}