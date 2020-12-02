//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
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

/// Error enum for SageMakerFeatureStoreRuntime
public struct SageMakerFeatureStoreRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case accessForbidden = "AccessForbidden"
        case internalFailure = "InternalFailure"
        case resourceNotFound = "ResourceNotFound"
        case serviceUnavailable = "ServiceUnavailable"
        case validationError = "ValidationError"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerFeatureStoreRuntime
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

    /// You do not have permission to perform an action.
    public static var accessForbidden: Self { .init(.accessForbidden) }
    /// An internal failure occurred. Try your request again. If the problem persists, contact AWS customer support.
    public static var internalFailure: Self { .init(.internalFailure) }
    /// A resource that is required to perform an action was not found.
    public static var resourceNotFound: Self { .init(.resourceNotFound) }
    /// The service is currently unavailable.
    public static var serviceUnavailable: Self { .init(.serviceUnavailable) }
    /// There was an error validating your request.
    public static var validationError: Self { .init(.validationError) }
}

extension SageMakerFeatureStoreRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerFeatureStoreRuntimeErrorType, rhs: SageMakerFeatureStoreRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerFeatureStoreRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
