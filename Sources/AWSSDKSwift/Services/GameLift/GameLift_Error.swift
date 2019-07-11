// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for GameLift
public enum GameLiftErrorType: AWSErrorType {
    case conflictException(message: String?)
    case fleetCapacityExceededException(message: String?)
    case gameSessionFullException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case internalServiceException(message: String?)
    case invalidFleetStatusException(message: String?)
    case invalidGameSessionStatusException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case terminalRoutingStrategyException(message: String?)
    case unauthorizedException(message: String?)
    case unsupportedRegionException(message: String?)
}

extension GameLiftErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictException":
            self = .conflictException(message: message)
        case "FleetCapacityExceededException":
            self = .fleetCapacityExceededException(message: message)
        case "GameSessionFullException":
            self = .gameSessionFullException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidFleetStatusException":
            self = .invalidFleetStatusException(message: message)
        case "InvalidGameSessionStatusException":
            self = .invalidGameSessionStatusException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TerminalRoutingStrategyException":
            self = .terminalRoutingStrategyException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "UnsupportedRegionException":
            self = .unsupportedRegionException(message: message)
        default:
            return nil
        }
    }
}
