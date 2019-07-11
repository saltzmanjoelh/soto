// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see What is Amazon Athena in the Amazon Athena User Guide. If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or later with the Amazon Athena API. Earlier version drivers do not support the API. For more information and to download the driver, see Accessing Amazon Athena with JDBC. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
*/
public struct Athena {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AmazonAthena",
            service: "athena",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-05-18",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AthenaErrorType.self]
        )
    }

    ///  Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use ListNamedQueriesInput to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries differ from executed queries. Use BatchGetQueryExecutionInput to get details about each unique query execution, and ListQueryExecutionsInput to get a list of query execution IDs.
    public func batchGetNamedQuery(_ input: BatchGetNamedQueryInput) throws -> Future<BatchGetNamedQueryOutput> {
        return try client.send(operation: "BatchGetNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use ListQueryExecutionsInput$WorkGroup. Query executions differ from named (saved) queries. Use BatchGetNamedQueryInput to get details about named queries.
    public func batchGetQueryExecution(_ input: BatchGetQueryExecutionInput) throws -> Future<BatchGetQueryExecutionOutput> {
        return try client.send(operation: "BatchGetQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a named query in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func createNamedQuery(_ input: CreateNamedQueryInput) throws -> Future<CreateNamedQueryOutput> {
        return try client.send(operation: "CreateNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a workgroup with the specified name.
    public func createWorkGroup(_ input: CreateWorkGroupInput) throws -> Future<CreateWorkGroupOutput> {
        return try client.send(operation: "CreateWorkGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the named query if you have access to the workgroup in which the query was saved. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func deleteNamedQuery(_ input: DeleteNamedQueryInput) throws -> Future<DeleteNamedQueryOutput> {
        return try client.send(operation: "DeleteNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.
    public func deleteWorkGroup(_ input: DeleteWorkGroupInput) throws -> Future<DeleteWorkGroupOutput> {
        return try client.send(operation: "DeleteWorkGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.
    public func getNamedQuery(_ input: GetNamedQueryInput) throws -> Future<GetNamedQueryOutput> {
        return try client.send(operation: "GetNamedQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.
    public func getQueryExecution(_ input: GetQueryExecutionInput) throws -> Future<GetQueryExecutionOutput> {
        return try client.send(operation: "GetQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the results of a single query execution specified by QueryExecutionId if you have access to the workgroup in which the query ran. This request does not execute the query but returns results. Use StartQueryExecution to run a query.
    public func getQueryResults(_ input: GetQueryResultsInput) throws -> Future<GetQueryResultsOutput> {
        return try client.send(operation: "GetQueryResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the workgroup with the specified name.
    public func getWorkGroup(_ input: GetWorkGroupInput) throws -> Future<GetWorkGroupOutput> {
        return try client.send(operation: "GetWorkGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listNamedQueries(_ input: ListNamedQueriesInput) throws -> Future<ListNamedQueriesOutput> {
        return try client.send(operation: "ListNamedQueries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of available query execution IDs for the queries in the specified workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listQueryExecutions(_ input: ListQueryExecutionsInput) throws -> Future<ListQueryExecutionsOutput> {
        return try client.send(operation: "ListQueryExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags associated with this workgroup.
    public func listTagsForResource(_ input: ListTagsForResourceInput) throws -> Future<ListTagsForResourceOutput> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists available workgroups for the account.
    public func listWorkGroups(_ input: ListWorkGroupsInput) throws -> Future<ListWorkGroupsOutput> {
        return try client.send(operation: "ListWorkGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Runs the SQL query statements contained in the Query. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func startQueryExecution(_ input: StartQueryExecutionInput) throws -> Future<StartQueryExecutionOutput> {
        return try client.send(operation: "StartQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a query execution. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func stopQueryExecution(_ input: StopQueryExecutionInput) throws -> Future<StopQueryExecutionOutput> {
        return try client.send(operation: "StopQueryExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags to the resource, such as a workgroup. A tag is a label that you assign to an AWS Athena resource (a workgroup). Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize resources (workgroups) in Athena, for example, by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups in your account. For best practices, see AWS Tagging Strategies. The key length is from 1 (minimum) to 128 (maximum) Unicode characters in UTF-8. The tag value length is from 0 (minimum) to 256 (maximum) Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one, separate them by commas.
    public func tagResource(_ input: TagResourceInput) throws -> Future<TagResourceOutput> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from the workgroup resource. Takes as an input a list of TagKey Strings separated by commas, and removes their tags at the same time.
    public func untagResource(_ input: UntagResourceInput) throws -> Future<UntagResourceOutput> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the workgroup with the specified name. The workgroup's name cannot be changed.
    public func updateWorkGroup(_ input: UpdateWorkGroupInput) throws -> Future<UpdateWorkGroupOutput> {
        return try client.send(operation: "UpdateWorkGroup", path: "/", httpMethod: "POST", input: input)
    }


}
