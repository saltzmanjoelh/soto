//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for Route53Resolver
public struct Route53ResolverErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidPolicyDocument = "InvalidPolicyDocument"
        case invalidRequestException = "InvalidRequestException"
        case invalidTagException = "InvalidTagException"
        case limitExceededException = "LimitExceededException"
        case resourceExistsException = "ResourceExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceUnavailableException = "ResourceUnavailableException"
        case throttlingException = "ThrottlingException"
        case unknownResourceException = "UnknownResourceException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Route53Resolver
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The current account doesn't have the IAM permissions required to perform the specified Resolver operation.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// We encountered an unknown error. Try again in a few minutes.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// The value that you specified for NextToken in a List request isn't valid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// One or more parameters in this request are not valid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The specified Resolver rule policy is invalid.
    public static var invalidPolicyDocument: Self { .init(.invalidPolicyDocument) }
    /// The request is invalid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The specified tag is invalid.
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// The request caused one or more limits to be exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource that you tried to create already exists.
    public static var resourceExistsException: Self { .init(.resourceExistsException) }
    /// The resource that you tried to update or delete is currently in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The specified resource doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The specified resource isn't available.
    public static var resourceUnavailableException: Self { .init(.resourceUnavailableException) }
    /// The request was throttled. Try again in a few minutes.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The specified resource doesn't exist.
    public static var unknownResourceException: Self { .init(.unknownResourceException) }
}

extension Route53ResolverErrorType: Equatable {
    public static func == (lhs: Route53ResolverErrorType, rhs: Route53ResolverErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Route53ResolverErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
