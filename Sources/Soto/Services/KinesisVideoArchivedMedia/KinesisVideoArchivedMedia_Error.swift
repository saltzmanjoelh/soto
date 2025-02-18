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

/// Error enum for KinesisVideoArchivedMedia
public struct KinesisVideoArchivedMediaErrorType: AWSErrorType {
    enum Code: String {
        case clientLimitExceededException = "ClientLimitExceededException"
        case invalidArgumentException = "InvalidArgumentException"
        case invalidCodecPrivateDataException = "InvalidCodecPrivateDataException"
        case invalidMediaFrameException = "InvalidMediaFrameException"
        case missingCodecPrivateDataException = "MissingCodecPrivateDataException"
        case noDataRetentionException = "NoDataRetentionException"
        case notAuthorizedException = "NotAuthorizedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case unsupportedStreamMediaTypeException = "UnsupportedStreamMediaTypeException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize KinesisVideoArchivedMedia
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

    /// Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.
    public static var clientLimitExceededException: Self { .init(.clientLimitExceededException) }
    /// A specified parameter exceeds its restrictions, is not supported, or can't be used.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// The codec private data in at least one of the tracks of the video stream is not valid for this operation.
    public static var invalidCodecPrivateDataException: Self { .init(.invalidCodecPrivateDataException) }
    /// One or more frames in the requested clip could not be parsed based on the specified codec.
    public static var invalidMediaFrameException: Self { .init(.invalidMediaFrameException) }
    /// No codec private data was found in at least one of tracks of the video stream.
    public static var missingCodecPrivateDataException: Self { .init(.missingCodecPrivateDataException) }
    /// A streaming session was requested for a stream that does not retain data (that is, has a DataRetentionInHours of 0).
    public static var noDataRetentionException: Self { .init(.noDataRetentionException) }
    /// Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
    ///  GetMedia throws this error when Kinesis Video Streams can't find the stream that you specified.  GetHLSStreamingSessionURL and GetDASHStreamingSessionURL throw this error if a session with a PlaybackMode of ON_DEMAND or LIVE_REPLAYis requested for a stream that has no fragments within the requested time range, or if a session with a PlaybackMode of LIVE is requested for a stream that has no fragments within the last 30 seconds.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The type of the media (for example, h.264 or h.265 video or ACC or G.711 audio) could not be determined from the codec IDs of the tracks in the first fragment for a playback session. The codec ID for track 1 should be V_MPEG/ISO/AVC and, optionally, the codec ID for track 2 should be A_AAC.
    public static var unsupportedStreamMediaTypeException: Self { .init(.unsupportedStreamMediaTypeException) }
}

extension KinesisVideoArchivedMediaErrorType: Equatable {
    public static func == (lhs: KinesisVideoArchivedMediaErrorType, rhs: KinesisVideoArchivedMediaErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KinesisVideoArchivedMediaErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
