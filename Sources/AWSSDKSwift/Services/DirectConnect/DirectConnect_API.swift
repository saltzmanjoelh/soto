// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A connection provides access to all AWS Regions except the China (Beijing) and (China) Ningxia Regions. AWS resources in the China Regions can only be accessed through locations associated with those Regions.
*/
public struct DirectConnect {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "OvertureService",
            service: "directconnect",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2012-10-25",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [DirectConnectErrorType.self]
        )
    }

    ///  Removes one or more tags from the specified AWS Direct Connect resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> UntagResourceResponse {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use DescribeLoa instead. Gets the LOA-CFA for the specified interconnect. The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect User Guide.
    public func describeInterconnectLoa(_ input: DescribeInterconnectLoaRequest) throws -> DescribeInterconnectLoaResponse {
        return try client.send(operation: "DescribeInterconnectLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use DescribeHostedConnections instead. Lists the connections that have been provisioned on the specified interconnect.  Intended for use by AWS Direct Connect partners only. 
    public func describeConnectionsOnInterconnect(_ input: DescribeConnectionsOnInterconnectRequest) throws -> Connections {
        return try client.send(operation: "DescribeConnectionsOnInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG). The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect User Guide.
    public func describeLoa(_ input: DescribeLoaRequest) throws -> Loa {
        return try client.send(operation: "DescribeLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provisions a public virtual interface to be owned by the specified AWS account. The owner of a connection calls this function to provision a public virtual interface to be owned by the specified AWS account. Virtual interfaces created using this function must be confirmed by the owner using ConfirmPublicVirtualInterface. Until this step has been completed, the virtual interface is in the confirming state and is not available to handle traffic. When creating an IPv6 public virtual interface, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.
    public func allocatePublicVirtualInterface(_ input: AllocatePublicVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AllocatePublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the association between the specified Direct Connect gateway and virtual private gateway.
    public func deleteDirectConnectGatewayAssociation(_ input: DeleteDirectConnectGatewayAssociationRequest) throws -> DeleteDirectConnectGatewayAssociationResult {
        return try client.send(operation: "DeleteDirectConnectGatewayAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the AWS Direct Connect locations in the current AWS Region. These are the locations that can be selected when calling CreateConnection or CreateInterconnect.
    public func describeLocations() throws -> Locations {
        return try client.send(operation: "DescribeLocations", path: "/", httpMethod: "POST")
    }

    ///  Provisions a private virtual interface to be owned by the specified AWS account. Virtual interfaces created using this action must be confirmed by the owner using ConfirmPrivateVirtualInterface. Until then, the virtual interface is in the Confirming state and is not available to handle traffic.
    public func allocatePrivateVirtualInterface(_ input: AllocatePrivateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AllocatePrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways. A Direct Connect gateway is global and visible in any AWS Region after it is created. The virtual interfaces and virtual private gateways that are connected through a Direct Connect gateway can be in different AWS Regions. This enables you to connect to a VPC in any Region, regardless of the Region in which the virtual interfaces are located, and pass traffic between them.
    public func createDirectConnectGateway(_ input: CreateDirectConnectGatewayRequest) throws -> CreateDirectConnectGatewayResult {
        return try client.send(operation: "CreateDirectConnectGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use DescribeLoa instead. Gets the LOA-CFA for a connection. The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect User Guide.
    public func describeConnectionLoa(_ input: DescribeConnectionLoaRequest) throws -> DescribeConnectionLoaResponse {
        return try client.send(operation: "DescribeConnectionLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes all your link aggregation groups (LAG) or the specified LAG.
    public func describeLags(_ input: DescribeLagsRequest) throws -> Lags {
        return try client.send(operation: "DescribeLags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified AWS Direct Connect resource. Each resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.
    public func tagResource(_ input: TagResourceRequest) throws -> TagResourceResponse {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the associations between your Direct Connect gateways and virtual private gateways. You must specify a Direct Connect gateway, a virtual private gateway, or both. If you specify a Direct Connect gateway, the response contains all virtual private gateways associated with the Direct Connect gateway. If you specify a virtual private gateway, the response contains all Direct Connect gateways associated with the virtual private gateway. If you specify both, the response contains the association between the Direct Connect gateway and the virtual private gateway.
    public func describeDirectConnectGatewayAssociations(_ input: DescribeDirectConnectGatewayAssociationsRequest) throws -> DescribeDirectConnectGatewayAssociationsResult {
        return try client.send(operation: "DescribeDirectConnectGatewayAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.
    public func describeDirectConnectGateways(_ input: DescribeDirectConnectGatewaysRequest) throws -> DescribeDirectConnectGatewaysResult {
        return try client.send(operation: "DescribeDirectConnectGateways", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN. You cannot delete the last BGP peer from a virtual interface.
    public func deleteBGPPeer(_ input: DeleteBGPPeerRequest) throws -> DeleteBGPPeerResponse {
        return try client.send(operation: "DeleteBGPPeer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Confirms the creation of the specified hosted connection on an interconnect. Upon creation, the hosted connection is initially in the Ordering state, and remains in this state until the owner confirms creation of the hosted connection.
    public func confirmConnection(_ input: ConfirmConnectionRequest) throws -> ConfirmConnectionResponse {
        return try client.send(operation: "ConfirmConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an association between a Direct Connect gateway and a virtual private gateway. The virtual private gateway must be attached to a VPC and must not be associated with another Direct Connect gateway.
    public func createDirectConnectGatewayAssociation(_ input: CreateDirectConnectGatewayAssociationRequest) throws -> CreateDirectConnectGatewayAssociationResult {
        return try client.send(operation: "CreateDirectConnectGatewayAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are attached to the Direct Connect gateway and disassociate all virtual private gateways that are associated with the Direct Connect gateway.
    public func deleteDirectConnectGateway(_ input: DeleteDirectConnectGatewayRequest) throws -> DeleteDirectConnectGatewayResult {
        return try client.send(operation: "DeleteDirectConnectGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified attributes of the specified virtual private interface. Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to the underlying physical connection if it wasn't updated to support jumbo frames. Updating the connection disrupts network connectivity for all virtual interfaces associated with the connection for up to 30 seconds. To check whether your connection supports jumbo frames, call DescribeConnections. To check whether your virtual interface supports jumbo frames, call DescribeVirtualInterfaces.
    public func updateVirtualInterfaceAttributes(_ input: UpdateVirtualInterfaceAttributesRequest) throws -> VirtualInterface {
        return try client.send(operation: "UpdateVirtualInterfaceAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified connection. Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. If you are partnering with any third parties to connect with the AWS Direct Connect location, you must cancel your service with them separately.
    public func deleteConnection(_ input: DeleteConnectionRequest) throws -> Connection {
        return try client.send(operation: "DeleteConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates an existing connection with a link aggregation group (LAG). The connection is interrupted and re-established as a member of the LAG (connectivity to AWS is interrupted). The connection must be hosted on the same AWS Direct Connect endpoint as the LAG, and its bandwidth must match the bandwidth for the LAG. You can re-associate a connection that's currently associated with a different LAG; however, if removing the connection would cause the original LAG to fall below its setting for minimum number of operational connections, the request fails. Any virtual interfaces that are directly associated with the connection are automatically re-associated with the LAG. If the connection was originally associated with a different LAG, the virtual interfaces remain associated with the original LAG. For interconnects, any hosted connections are automatically re-associated with the LAG. If the interconnect was originally associated with a different LAG, the hosted connections remain associated with the original LAG.
    public func associateConnectionWithLag(_ input: AssociateConnectionWithLagRequest) throws -> Connection {
        return try client.send(operation: "AssociateConnectionWithLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.
    public func deleteLag(_ input: DeleteLagRequest) throws -> Lag {
        return try client.send(operation: "DeleteLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned. A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer network.
    public func describeVirtualInterfaces(_ input: DescribeVirtualInterfacesRequest) throws -> VirtualInterfaces {
        return try client.send(operation: "DescribeVirtualInterfaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.  Intended for use by AWS Direct Connect partners only. 
    public func associateHostedConnection(_ input: AssociateHostedConnectionRequest) throws -> Connection {
        return try client.send(operation: "AssociateHostedConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails. Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using AssociateHostedConnection. To reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG for the association.
    public func associateVirtualInterface(_ input: AssociateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AssociateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the interconnects owned by the AWS account or only the specified interconnect.
    public func describeInterconnects(_ input: DescribeInterconnectsRequest) throws -> Interconnects {
        return try client.send(operation: "DescribeInterconnects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location. A LAG is a logical interface that uses the Link Aggregation Control Protocol (LACP) to aggregate multiple interfaces, enabling you to treat them as a single interface. All connections in a LAG must use the same bandwidth and must terminate at the same AWS Direct Connect endpoint. You can have up to 10 connections per LAG. Regardless of this limit, if you request more connections for the LAG than AWS Direct Connect can allocate on a single endpoint, no LAG is created. You can specify an existing physical connection or interconnect to include in the LAG (which counts towards the total number of connections). Doing so interrupts the current physical connection or hosted connections, and re-establishes them as a member of the LAG. The LAG will be created on the same AWS Direct Connect endpoint to which the connection terminates. Any virtual interfaces associated with the connection are automatically disassociated and re-associated with the LAG. The connection ID does not change. If the AWS account used to create a LAG is a registered AWS Direct Connect partner, the LAG is automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual interfaces cannot be directly configured.
    public func createLag(_ input: CreateLagRequest) throws -> Lag {
        return try client.send(operation: "CreateLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface can be connected to either a Direct Connect gateway or a Virtual Private Gateway (VGW). Connecting the private virtual interface to a Direct Connect gateway enables the possibility for connecting to multiple VPCs, including VPCs in different AWS Regions. Connecting the private virtual interface to a VGW only provides access to a single VPC within the same Region.
    public func createPrivateVirtualInterface(_ input: CreatePrivateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "CreatePrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays the specified connection or all connections in this Region.
    public func describeConnections(_ input: DescribeConnectionsRequest) throws -> Connections {
        return try client.send(operation: "DescribeConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the tags associated with the specified AWS Direct Connect resources.
    public func describeTags(_ input: DescribeTagsRequest) throws -> DescribeTagsResponse {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the response contains all Direct Connect gateways attached to the virtual interface. If you specify both, the response contains the attachment between the Direct Connect gateway and the virtual interface.
    public func describeDirectConnectGatewayAttachments(_ input: DescribeDirectConnectGatewayAttachmentsRequest) throws -> DescribeDirectConnectGatewayAttachmentsResult {
        return try client.send(operation: "DescribeDirectConnectGatewayAttachments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a hosted connection on the specified interconnect or a link aggregation group (LAG). Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect or LAG.  Intended for use by AWS Direct Connect partners only. 
    public func allocateHostedConnection(_ input: AllocateHostedConnectionRequest) throws -> Connection {
        return try client.send(operation: "AllocateHostedConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an interconnect between an AWS Direct Connect partner's network and a specific AWS Direct Connect location. An interconnect is a connection which is capable of hosting other connections. The partner can use an interconnect to provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not have their own connections. Like a standard connection, an interconnect links the partner's network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router. You can automatically add the new interconnect to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new interconnect is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no interconnect is created. For each end customer, the AWS Direct Connect partner provisions a connection on their interconnect by calling AllocateConnectionOnInterconnect. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the partner.  Intended for use by AWS Direct Connect partners only. 
    public func createInterconnect(_ input: CreateInterconnectRequest) throws -> Interconnect {
        return try client.send(operation: "CreateInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon S3. When creating an IPv6 public virtual interface (addressFamily is ipv6), leave the customer and amazon address fields blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.
    public func createPublicVirtualInterface(_ input: CreatePublicVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "CreatePublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the virtual private gateways owned by the AWS account. You can create one or more AWS Direct Connect private virtual interfaces linked to a virtual private gateway.
    public func describeVirtualGateways() throws -> VirtualGateways {
        return try client.send(operation: "DescribeVirtualGateways", path: "/", httpMethod: "POST")
    }

    ///  Updates the attributes of the specified link aggregation group (LAG). You can update the following attributes:   The name of the LAG.   The value for the minimum number of connections that must be operational for the LAG itself to be operational.    When you create a LAG, the default value for the minimum number of operational connections is zero (0). If you update this value and the number of operational connections falls below the specified value, the LAG automatically goes down to avoid over-utilization of the remaining connections. Adjust this value with care, as it could force the LAG down if it is set higher than the current number of operational connections.
    public func updateLag(_ input: UpdateLagRequest) throws -> Lag {
        return try client.send(operation: "UpdateLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the hosted connections that have been provisioned on the specified interconnect or link aggregation group (LAG).  Intended for use by AWS Direct Connect partners only. 
    public func describeHostedConnections(_ input: DescribeHostedConnectionsRequest) throws -> Connections {
        return try client.send(operation: "DescribeHostedConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a connection from a link aggregation group (LAG). The connection is interrupted and re-established as a standalone connection (the connection is not deleted; to delete the connection, use the DeleteConnection request). If the LAG has associated virtual interfaces or hosted connections, they remain associated with the LAG. A disassociated connection owned by an AWS Direct Connect partner is automatically converted to an interconnect. If disassociating the connection would cause the LAG to fall below its setting for minimum number of operational connections, the request fails, except when it's the last member of the LAG. If all connections are disassociated, the LAG continues to exist as an empty LAG with no physical connections. 
    public func disassociateConnectionFromLag(_ input: DisassociateConnectionFromLagRequest) throws -> Connection {
        return try client.send(operation: "DisassociateConnectionFromLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified interconnect.  Intended for use by AWS Direct Connect partners only. 
    public func deleteInterconnect(_ input: DeleteInterconnectRequest) throws -> DeleteInterconnectResponse {
        return try client.send(operation: "DeleteInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a virtual interface.
    public func deleteVirtualInterface(_ input: DeleteVirtualInterfaceRequest) throws -> DeleteVirtualInterfaceResponse {
        return try client.send(operation: "DeleteVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a connection between a customer network and a specific AWS Direct Connect location. A connection links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. To find the locations for your Region, use DescribeLocations. You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection is created.
    public func createConnection(_ input: CreateConnectionRequest) throws -> Connection {
        return try client.send(operation: "CreateConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use AllocateHostedConnection instead. Creates a hosted connection on an interconnect. Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect.  Intended for use by AWS Direct Connect partners only. 
    public func allocateConnectionOnInterconnect(_ input: AllocateConnectionOnInterconnectRequest) throws -> Connection {
        return try client.send(operation: "AllocateConnectionOnInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accepts ownership of a private virtual interface created by another AWS account. After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.
    public func confirmPrivateVirtualInterface(_ input: ConfirmPrivateVirtualInterfaceRequest) throws -> ConfirmPrivateVirtualInterfaceResponse {
        return try client.send(operation: "ConfirmPrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a BGP peer on the specified virtual interface. You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to access AWS resources that also use that address family. If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot be in the same address family as an existing BGP peer on the virtual interface. When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses. For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.
    public func createBGPPeer(_ input: CreateBGPPeerRequest) throws -> CreateBGPPeerResponse {
        return try client.send(operation: "CreateBGPPeer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accepts ownership of a public virtual interface created by another AWS account. After the virtual interface owner makes this call, the specified virtual interface is created and made available to handle traffic.
    public func confirmPublicVirtualInterface(_ input: ConfirmPublicVirtualInterfaceRequest) throws -> ConfirmPublicVirtualInterfaceResponse {
        return try client.send(operation: "ConfirmPublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }


}