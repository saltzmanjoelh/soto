// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for WAFRegional
public enum WAFRegionalErrorType: AWSErrorType {
    case wAFBadRequestException(message: String?)
    case wAFDisallowedNameException(message: String?)
    case wAFInternalErrorException(message: String?)
    case wAFInvalidAccountException(message: String?)
    case wAFInvalidOperationException(message: String?)
    case wAFInvalidParameterException(message: String?)
    case wAFInvalidPermissionPolicyException(message: String?)
    case wAFInvalidRegexPatternException(message: String?)
    case wAFLimitsExceededException(message: String?)
    case wAFNonEmptyEntityException(message: String?)
    case wAFNonexistentContainerException(message: String?)
    case wAFNonexistentItemException(message: String?)
    case wAFReferencedItemException(message: String?)
    case wAFServiceLinkedRoleErrorException(message: String?)
    case wAFStaleDataException(message: String?)
    case wAFSubscriptionNotFoundException(message: String?)
    case wAFTagOperationException(message: String?)
    case wAFTagOperationInternalErrorException(message: String?)
    case wAFUnavailableEntityException(message: String?)
}

extension WAFRegionalErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "WAFBadRequestException":
            self = .wAFBadRequestException(message: message)
        case "WAFDisallowedNameException":
            self = .wAFDisallowedNameException(message: message)
        case "WAFInternalErrorException":
            self = .wAFInternalErrorException(message: message)
        case "WAFInvalidAccountException":
            self = .wAFInvalidAccountException(message: message)
        case "WAFInvalidOperationException":
            self = .wAFInvalidOperationException(message: message)
        case "WAFInvalidParameterException":
            self = .wAFInvalidParameterException(message: message)
        case "WAFInvalidPermissionPolicyException":
            self = .wAFInvalidPermissionPolicyException(message: message)
        case "WAFInvalidRegexPatternException":
            self = .wAFInvalidRegexPatternException(message: message)
        case "WAFLimitsExceededException":
            self = .wAFLimitsExceededException(message: message)
        case "WAFNonEmptyEntityException":
            self = .wAFNonEmptyEntityException(message: message)
        case "WAFNonexistentContainerException":
            self = .wAFNonexistentContainerException(message: message)
        case "WAFNonexistentItemException":
            self = .wAFNonexistentItemException(message: message)
        case "WAFReferencedItemException":
            self = .wAFReferencedItemException(message: message)
        case "WAFServiceLinkedRoleErrorException":
            self = .wAFServiceLinkedRoleErrorException(message: message)
        case "WAFStaleDataException":
            self = .wAFStaleDataException(message: message)
        case "WAFSubscriptionNotFoundException":
            self = .wAFSubscriptionNotFoundException(message: message)
        case "WAFTagOperationException":
            self = .wAFTagOperationException(message: message)
        case "WAFTagOperationInternalErrorException":
            self = .wAFTagOperationInternalErrorException(message: message)
        case "WAFUnavailableEntityException":
            self = .wAFUnavailableEntityException(message: message)
        default:
            return nil
        }
    }
}
