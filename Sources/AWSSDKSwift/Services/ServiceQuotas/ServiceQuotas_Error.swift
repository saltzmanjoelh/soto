// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ServiceQuotas
public enum ServiceQuotasErrorType: AWSErrorType {
    case aWSServiceAccessNotEnabledException(message: String?)
    case accessDeniedException(message: String?)
    case dependencyAccessDeniedException(message: String?)
    case illegalArgumentException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidResourceStateException(message: String?)
    case noAvailableOrganizationException(message: String?)
    case noSuchResourceException(message: String?)
    case organizationNotInAllFeaturesModeException(message: String?)
    case quotaExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case serviceException(message: String?)
    case serviceQuotaTemplateNotInUseException(message: String?)
    case templatesNotAvailableInRegionException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension ServiceQuotasErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AWSServiceAccessNotEnabledException":
            self = .aWSServiceAccessNotEnabledException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "DependencyAccessDeniedException":
            self = .dependencyAccessDeniedException(message: message)
        case "IllegalArgumentException":
            self = .illegalArgumentException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "NoAvailableOrganizationException":
            self = .noAvailableOrganizationException(message: message)
        case "NoSuchResourceException":
            self = .noSuchResourceException(message: message)
        case "OrganizationNotInAllFeaturesModeException":
            self = .organizationNotInAllFeaturesModeException(message: message)
        case "QuotaExceededException":
            self = .quotaExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "ServiceQuotaTemplateNotInUseException":
            self = .serviceQuotaTemplateNotInUseException(message: message)
        case "TemplatesNotAvailableInRegionException":
            self = .templatesNotAvailableInRegionException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}
