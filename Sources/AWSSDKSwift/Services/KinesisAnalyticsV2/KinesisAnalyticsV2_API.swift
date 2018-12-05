// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Documentation for Kinesis Data Analytics API v2
*/
public struct KinesisAnalyticsV2 {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "KinesisAnalytics_20180523",
            service: "kinesisanalytics",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-23",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [KinesisAnalyticsV2ErrorType.self]
        )
    }

    ///  Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application.   SQL is not enabled for this private beta release. Using SQL parameters (such as SqlApplicationConfiguration) will result in an error. 
    public func createApplication(_ input: CreateApplicationRequest) throws -> CreateApplicationResponse {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about the current application snapshots.
    public func listApplicationSnapshots(_ input: ListApplicationSnapshotsRequest) throws -> ListApplicationSnapshotsResponse {
        return try client.send(operation: "ListApplicationSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. 
    public func stopApplication(_ input: StopApplicationRequest) throws -> StopApplicationResponse {
        return try client.send(operation: "StopApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a snapshot of application state.
    public func deleteApplicationSnapshot(_ input: DeleteApplicationSnapshotRequest) throws -> DeleteApplicationSnapshotResponse {
        return try client.send(operation: "DeleteApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.  SQL is not enabled for this private beta. Using SQL parameters (such as RunConfiguration$SqlRunConfigurations) will result in an error. 
    public func startApplication(_ input: StartApplicationRequest) throws -> StartApplicationResponse {
        return try client.send(operation: "StartApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.
    public func deleteApplicationOutput(_ input: DeleteApplicationOutputRequest) throws -> DeleteApplicationOutputResponse {
        return try client.send(operation: "DeleteApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.
    public func deleteApplication(_ input: DeleteApplicationRequest) throws -> DeleteApplicationResponse {
        return try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.
    public func addApplicationReferenceDataSource(_ input: AddApplicationReferenceDataSourceRequest) throws -> AddApplicationReferenceDataSourceResponse {
        return try client.send(operation: "AddApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.
    public func listApplications(_ input: ListApplicationsRequest) throws -> ListApplicationsResponse {
        return try client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific Amazon Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.
    public func describeApplication(_ input: DescribeApplicationRequest) throws -> DescribeApplicationResponse {
        return try client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation. 
    public func deleteApplicationReferenceDataSource(_ input: DeleteApplicationReferenceDataSourceRequest) throws -> DeleteApplicationReferenceDataSourceResponse {
        return try client.send(operation: "DeleteApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 
    public func discoverInputSchema(_ input: DiscoverInputSchemaRequest) throws -> DiscoverInputSchemaResponse {
        return try client.send(operation: "DiscoverInputSchema", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. 
    public func deleteApplicationCloudWatchLoggingOption(_ input: DeleteApplicationCloudWatchLoggingOptionRequest) throws -> DeleteApplicationCloudWatchLoggingOptionResponse {
        return try client.send(operation: "DeleteApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.
    public func addApplicationOutput(_ input: AddApplicationOutputRequest) throws -> AddApplicationOutputResponse {
        return try client.send(operation: "AddApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.
    public func addApplicationInputProcessingConfiguration(_ input: AddApplicationInputProcessingConfigurationRequest) throws -> AddApplicationInputProcessingConfigurationResponse {
        return try client.send(operation: "AddApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a snapshot of application state data.
    public func describeApplicationSnapshot(_ input: DescribeApplicationSnapshotRequest) throws -> DescribeApplicationSnapshotResponse {
        return try client.send(operation: "DescribeApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an Amazon CloudWatch log stream to monitor application configuration errors.
    public func addApplicationCloudWatchLoggingOption(_ input: AddApplicationCloudWatchLoggingOptionRequest) throws -> AddApplicationCloudWatchLoggingOptionResponse {
        return try client.send(operation: "AddApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application.   SQL is not enabled for this private beta. Using SQL parameters (such as SqlApplicationConfigurationUpdate) will result in an error. 
    public func updateApplication(_ input: UpdateApplicationRequest) throws -> UpdateApplicationResponse {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an InputProcessingConfiguration from an input.
    public func deleteApplicationInputProcessingConfiguration(_ input: DeleteApplicationInputProcessingConfigurationRequest) throws -> DeleteApplicationInputProcessingConfigurationResponse {
        return try client.send(operation: "DeleteApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of the application's state data.
    public func createApplicationSnapshot(_ input: CreateApplicationSnapshotRequest) throws -> CreateApplicationSnapshotResponse {
        return try client.send(operation: "CreateApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///   Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. 
    public func addApplicationInput(_ input: AddApplicationInputRequest) throws -> AddApplicationInputResponse {
        return try client.send(operation: "AddApplicationInput", path: "/", httpMethod: "POST", input: input)
    }


}