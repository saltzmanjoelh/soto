// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.
*/
public struct ApiGatewayManagementApi {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "execute-api",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ApiGatewayManagementApiErrorType.self]
        )
    }

    ///  Sends the provided data to the specified connection.
    @discardableResult public func postToConnection(_ input: PostToConnectionRequest) throws -> Future<Void> {
        return try client.send(operation: "PostToConnection", path: "/@connections/{connectionId}", httpMethod: "POST", input: input)
    }


}
