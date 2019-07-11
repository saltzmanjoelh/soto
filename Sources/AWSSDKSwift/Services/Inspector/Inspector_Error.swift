// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Inspector
public enum InspectorErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case agentsAlreadyRunningAssessmentException(message: String?)
    case assessmentRunInProgressException(message: String?)
    case internalException(message: String?)
    case invalidCrossAccountRoleException(message: String?)
    case invalidInputException(message: String?)
    case limitExceededException(message: String?)
    case noSuchEntityException(message: String?)
    case previewGenerationInProgressException(message: String?)
    case serviceTemporarilyUnavailableException(message: String?)
    case unsupportedFeatureException(message: String?)
}

extension InspectorErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AgentsAlreadyRunningAssessmentException":
            self = .agentsAlreadyRunningAssessmentException(message: message)
        case "AssessmentRunInProgressException":
            self = .assessmentRunInProgressException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidCrossAccountRoleException":
            self = .invalidCrossAccountRoleException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NoSuchEntityException":
            self = .noSuchEntityException(message: message)
        case "PreviewGenerationInProgressException":
            self = .previewGenerationInProgressException(message: message)
        case "ServiceTemporarilyUnavailableException":
            self = .serviceTemporarilyUnavailableException(message: message)
        case "UnsupportedFeatureException":
            self = .unsupportedFeatureException(message: message)
        default:
            return nil
        }
    }
}
