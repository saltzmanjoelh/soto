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

@_exported import SotoCore

/// Service object for interacting with AWS Athena service.
///
/// Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see What is Amazon Athena in the Amazon Athena User Guide. If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or later with the Amazon Athena API. Earlier version drivers do not support the API. For more information and to download the driver, see Accessing Amazon Athena with JDBC. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
public struct Athena: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Athena client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AmazonAthena",
            service: "athena",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-05-18",
            endpoint: endpoint,
            errorType: AthenaErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use ListNamedQueriesInput to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries differ from executed queries. Use BatchGetQueryExecutionInput to get details about each unique query execution, and ListQueryExecutionsInput to get a list of query execution IDs.
    public func batchGetNamedQuery(_ input: BatchGetNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetNamedQueryOutput> {
        return self.client.execute(operation: "BatchGetNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func batchGetNamedQuery(_ input: BatchGetNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetNamedQueryOutput {
        return try await self.client.execute(operation: "BatchGetNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use ListQueryExecutionsInput$WorkGroup. Query executions differ from named (saved) queries. Use BatchGetNamedQueryInput to get details about named queries.
    public func batchGetQueryExecution(_ input: BatchGetQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetQueryExecutionOutput> {
        return self.client.execute(operation: "BatchGetQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func batchGetQueryExecution(_ input: BatchGetQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetQueryExecutionOutput {
        return try await self.client.execute(operation: "BatchGetQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates (registers) a data catalog with the specified name and properties. Catalogs created are visible to all users of the same AWS account.
    public func createDataCatalog(_ input: CreateDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataCatalogOutput> {
        return self.client.execute(operation: "CreateDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func createDataCatalog(_ input: CreateDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataCatalogOutput {
        return try await self.client.execute(operation: "CreateDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a named query in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func createNamedQuery(_ input: CreateNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNamedQueryOutput> {
        return self.client.execute(operation: "CreateNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func createNamedQuery(_ input: CreateNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNamedQueryOutput {
        return try await self.client.execute(operation: "CreateNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a workgroup with the specified name.
    public func createWorkGroup(_ input: CreateWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkGroupOutput> {
        return self.client.execute(operation: "CreateWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func createWorkGroup(_ input: CreateWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkGroupOutput {
        return try await self.client.execute(operation: "CreateWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a data catalog.
    public func deleteDataCatalog(_ input: DeleteDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataCatalogOutput> {
        return self.client.execute(operation: "DeleteDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteDataCatalog(_ input: DeleteDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataCatalogOutput {
        return try await self.client.execute(operation: "DeleteDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the named query if you have access to the workgroup in which the query was saved. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func deleteNamedQuery(_ input: DeleteNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamedQueryOutput> {
        return self.client.execute(operation: "DeleteNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteNamedQuery(_ input: DeleteNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamedQueryOutput {
        return try await self.client.execute(operation: "DeleteNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.
    public func deleteWorkGroup(_ input: DeleteWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkGroupOutput> {
        return self.client.execute(operation: "DeleteWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func deleteWorkGroup(_ input: DeleteWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkGroupOutput {
        return try await self.client.execute(operation: "DeleteWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the specified data catalog.
    public func getDataCatalog(_ input: GetDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataCatalogOutput> {
        return self.client.execute(operation: "GetDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getDataCatalog(_ input: GetDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataCatalogOutput {
        return try await self.client.execute(operation: "GetDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a database object for the specfied database and data catalog.
    public func getDatabase(_ input: GetDatabaseInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatabaseOutput> {
        return self.client.execute(operation: "GetDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getDatabase(_ input: GetDatabaseInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatabaseOutput {
        return try await self.client.execute(operation: "GetDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.
    public func getNamedQuery(_ input: GetNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNamedQueryOutput> {
        return self.client.execute(operation: "GetNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getNamedQuery(_ input: GetNamedQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNamedQueryOutput {
        return try await self.client.execute(operation: "GetNamedQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.
    public func getQueryExecution(_ input: GetQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetQueryExecutionOutput> {
        return self.client.execute(operation: "GetQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getQueryExecution(_ input: GetQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryExecutionOutput {
        return try await self.client.execute(operation: "GetQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied.
    public func getQueryResults(_ input: GetQueryResultsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetQueryResultsOutput> {
        return self.client.execute(operation: "GetQueryResults", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getQueryResults(_ input: GetQueryResultsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryResultsOutput {
        return try await self.client.execute(operation: "GetQueryResults", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns table metadata for the specified catalog, database, and table.
    public func getTableMetadata(_ input: GetTableMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTableMetadataOutput> {
        return self.client.execute(operation: "GetTableMetadata", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getTableMetadata(_ input: GetTableMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTableMetadataOutput {
        return try await self.client.execute(operation: "GetTableMetadata", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the workgroup with the specified name.
    public func getWorkGroup(_ input: GetWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkGroupOutput> {
        return self.client.execute(operation: "GetWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func getWorkGroup(_ input: GetWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkGroupOutput {
        return try await self.client.execute(operation: "GetWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the data catalogs in the current AWS account.
    public func listDataCatalogs(_ input: ListDataCatalogsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataCatalogsOutput> {
        return self.client.execute(operation: "ListDataCatalogs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listDataCatalogs(_ input: ListDataCatalogsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataCatalogsOutput {
        return try await self.client.execute(operation: "ListDataCatalogs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the databases in the specified data catalog.
    public func listDatabases(_ input: ListDatabasesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatabasesOutput> {
        return self.client.execute(operation: "ListDatabases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listDatabases(_ input: ListDatabasesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatabasesOutput {
        return try await self.client.execute(operation: "ListDatabases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listNamedQueries(_ input: ListNamedQueriesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNamedQueriesOutput> {
        return self.client.execute(operation: "ListNamedQueries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listNamedQueries(_ input: ListNamedQueriesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamedQueriesOutput {
        return try await self.client.execute(operation: "ListNamedQueries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listQueryExecutions(_ input: ListQueryExecutionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListQueryExecutionsOutput> {
        return self.client.execute(operation: "ListQueryExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listQueryExecutions(_ input: ListQueryExecutionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListQueryExecutionsOutput {
        return try await self.client.execute(operation: "ListQueryExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the metadata for the tables in the specified data catalog database.
    public func listTableMetadata(_ input: ListTableMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTableMetadataOutput> {
        return self.client.execute(operation: "ListTableMetadata", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listTableMetadata(_ input: ListTableMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTableMetadataOutput {
        return try await self.client.execute(operation: "ListTableMetadata", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags associated with an Athena workgroup or data catalog resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists available workgroups for the account.
    public func listWorkGroups(_ input: ListWorkGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkGroupsOutput> {
        return self.client.execute(operation: "ListWorkGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listWorkGroups(_ input: ListWorkGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkGroupsOutput {
        return try await self.client.execute(operation: "ListWorkGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs the SQL query statements contained in the Query. Requires you to have access to the workgroup in which the query ran. Running queries against an external catalog requires GetDataCatalog permission to the catalog. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func startQueryExecution(_ input: StartQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartQueryExecutionOutput> {
        return self.client.execute(operation: "StartQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func startQueryExecution(_ input: StartQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartQueryExecutionOutput {
        return try await self.client.execute(operation: "StartQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a query execution. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func stopQueryExecution(_ input: StopQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopQueryExecutionOutput> {
        return self.client.execute(operation: "StopQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func stopQueryExecution(_ input: StopQueryExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopQueryExecutionOutput {
        return try await self.client.execute(operation: "StopQueryExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to an Athena resource. A tag is a label that you assign to a resource. In Athena, a resource can be a workgroup or data catalog. Each tag consists of a key and an optional value, both of which you define. For example, you can use tags to categorize Athena workgroups or data catalogs by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups or data catalogs in your account. For best practices, see Tagging Best Practices. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one tag, separate them by commas.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a data catalog or workgroup resource.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the data catalog that has the specified name.
    public func updateDataCatalog(_ input: UpdateDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataCatalogOutput> {
        return self.client.execute(operation: "UpdateDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateDataCatalog(_ input: UpdateDataCatalogInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDataCatalogOutput {
        return try await self.client.execute(operation: "UpdateDataCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the workgroup with the specified name. The workgroup's name cannot be changed.
    public func updateWorkGroup(_ input: UpdateWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkGroupOutput> {
        return self.client.execute(operation: "UpdateWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateWorkGroup(_ input: UpdateWorkGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkGroupOutput {
        return try await self.client.execute(operation: "UpdateWorkGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Athena {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Athena, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
