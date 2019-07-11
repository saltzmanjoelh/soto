// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Polly
public enum PollyErrorType: AWSErrorType {
    case invalidLexiconException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidS3BucketException(message: String?)
    case invalidS3KeyException(message: String?)
    case invalidSampleRateException(message: String?)
    case invalidSnsTopicArnException(message: String?)
    case invalidSsmlException(message: String?)
    case invalidTaskIdException(message: String?)
    case languageNotSupportedException(message: String?)
    case lexiconNotFoundException(message: String?)
    case lexiconSizeExceededException(message: String?)
    case marksNotSupportedForFormatException(message: String?)
    case maxLexemeLengthExceededException(message: String?)
    case maxLexiconsNumberExceededException(message: String?)
    case serviceFailureException(message: String?)
    case ssmlMarksNotSupportedForTextTypeException(message: String?)
    case synthesisTaskNotFoundException(message: String?)
    case textLengthExceededException(message: String?)
    case unsupportedPlsAlphabetException(message: String?)
    case unsupportedPlsLanguageException(message: String?)
}

extension PollyErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidLexiconException":
            self = .invalidLexiconException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidS3BucketException":
            self = .invalidS3BucketException(message: message)
        case "InvalidS3KeyException":
            self = .invalidS3KeyException(message: message)
        case "InvalidSampleRateException":
            self = .invalidSampleRateException(message: message)
        case "InvalidSnsTopicArnException":
            self = .invalidSnsTopicArnException(message: message)
        case "InvalidSsmlException":
            self = .invalidSsmlException(message: message)
        case "InvalidTaskIdException":
            self = .invalidTaskIdException(message: message)
        case "LanguageNotSupportedException":
            self = .languageNotSupportedException(message: message)
        case "LexiconNotFoundException":
            self = .lexiconNotFoundException(message: message)
        case "LexiconSizeExceededException":
            self = .lexiconSizeExceededException(message: message)
        case "MarksNotSupportedForFormatException":
            self = .marksNotSupportedForFormatException(message: message)
        case "MaxLexemeLengthExceededException":
            self = .maxLexemeLengthExceededException(message: message)
        case "MaxLexiconsNumberExceededException":
            self = .maxLexiconsNumberExceededException(message: message)
        case "ServiceFailureException":
            self = .serviceFailureException(message: message)
        case "SsmlMarksNotSupportedForTextTypeException":
            self = .ssmlMarksNotSupportedForTextTypeException(message: message)
        case "SynthesisTaskNotFoundException":
            self = .synthesisTaskNotFoundException(message: message)
        case "TextLengthExceededException":
            self = .textLengthExceededException(message: message)
        case "UnsupportedPlsAlphabetException":
            self = .unsupportedPlsAlphabetException(message: message)
        case "UnsupportedPlsLanguageException":
            self = .unsupportedPlsLanguageException(message: message)
        default:
            return nil
        }
    }
}
