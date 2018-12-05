// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Route 53 API actions let you register domain names and perform related operations.
*/
public struct Route53Domains {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Route53Domains_v20140515",
            service: "route53domains",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-05-15",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [Route53DomainsErrorType.self]
        )
    }

    ///  This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain. If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func updateDomainNameservers(_ input: UpdateDomainNameserversRequest) throws -> UpdateDomainNameserversResponse {
        return try client.send(operation: "UpdateDomainNameservers", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi. This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.
    public func updateDomainContactPrivacy(_ input: UpdateDomainContactPrivacyRequest) throws -> UpdateDomainContactPrivacyResponse {
        return try client.send(operation: "UpdateDomainContactPrivacy", path: "/", httpMethod: "POST", input: input)
    }

    ///  For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
    public func resendContactReachabilityEmail(_ input: ResendContactReachabilityEmailRequest) throws -> ResendContactReachabilityEmailResponse {
        return try client.send(operation: "ResendContactReachabilityEmail", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func enableDomainTransferLock(_ input: EnableDomainTransferLockRequest) throws -> EnableDomainTransferLockResponse {
        return try client.send(operation: "EnableDomainTransferLock", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters. When you register a domain, Amazon Route 53 does the following:   Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.   Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.   Charges your AWS account an amount based on the top-level domain. For more information, see Amazon Route 53 Pricing.  
    public func registerDomain(_ input: RegisterDomainRequest) throws -> RegisterDomainResponse {
        return try client.send(operation: "RegisterDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Checks whether a domain name can be transferred to Amazon Route 53. 
    public func checkDomainTransferability(_ input: CheckDomainTransferabilityRequest) throws -> CheckDomainTransferabilityResponse {
        return try client.send(operation: "CheckDomainTransferability", path: "/", httpMethod: "POST", input: input)
    }

    ///  For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded. If you want us to resend the email, use the ResendContactReachabilityEmail operation.
    public func getContactReachabilityStatus(_ input: GetContactReachabilityStatusRequest) throws -> GetContactReachabilityStatusResponse {
        return try client.send(operation: "GetContactReachabilityStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all the domain-related billing records for the current AWS account for a specified period
    public func viewBilling(_ input: ViewBillingRequest) throws -> ViewBillingResponse {
        return try client.send(operation: "ViewBilling", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.
    public func retrieveDomainAuthCode(_ input: RetrieveDomainAuthCodeRequest) throws -> RetrieveDomainAuthCodeResponse {
        return try client.send(operation: "RetrieveDomainAuthCode", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.
    public func getDomainDetail(_ input: GetDomainDetailRequest) throws -> GetDomainDetailResponse {
        return try client.send(operation: "GetDomainDetail", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation deletes the specified tags for a domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func deleteTagsForDomain(_ input: DeleteTagsForDomainRequest) throws -> DeleteTagsForDomainResponse {
        return try client.send(operation: "DeleteTagsForDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account. The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see "Renewal, restoration, and deletion times" on the website for our registrar associate, Gandi. Amazon Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.
    public func enableDomainAutoRenew(_ input: EnableDomainAutoRenewRequest) throws -> EnableDomainAutoRenewResponse {
        return try client.send(operation: "EnableDomainAutoRenew", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns the operation IDs of operations that are not yet complete.
    public func listOperations(_ input: ListOperationsRequest) throws -> ListOperationsResponse {
        return try client.send(operation: "ListOperations", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns all of the tags that are associated with the specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func listTagsForDomain(_ input: ListTagsForDomainRequest) throws -> ListTagsForDomainResponse {
        return try client.send(operation: "ListTagsForDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).
    public func getDomainSuggestions(_ input: GetDomainSuggestionsRequest) throws -> GetDomainSuggestionsResponse {
        return try client.send(operation: "GetDomainSuggestions", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns the current status of an operation that is not completed.
    public func getOperationDetail(_ input: GetOperationDetailRequest) throws -> GetOperationDetailResponse {
        return try client.send(operation: "GetOperationDetail", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.
    public func checkDomainAvailability(_ input: CheckDomainAvailabilityRequest) throws -> CheckDomainAvailabilityResponse {
        return try client.send(operation: "CheckDomainAvailability", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation disables automatic renewal of domain registration for the specified domain.
    public func disableDomainAutoRenew(_ input: DisableDomainAutoRenewRequest) throws -> DisableDomainAutoRenewResponse {
        return try client.send(operation: "DisableDomainAutoRenew", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account. We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see Renewing Registration for a Domain in the Amazon Route 53 Developer Guide.
    public func renewDomain(_ input: RenewDomainRequest) throws -> RenewDomainResponse {
        return try client.send(operation: "RenewDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation adds or updates tags for a specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func updateTagsForDomain(_ input: UpdateTagsForDomainRequest) throws -> UpdateTagsForDomainResponse {
        return try client.send(operation: "UpdateTagsForDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation removes the transfer lock on the domain (specifically the clientTransferProhibited status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func disableDomainTransferLock(_ input: DisableDomainTransferLockRequest) throws -> DisableDomainTransferLockResponse {
        return try client.send(operation: "DisableDomainTransferLock", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical. If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func updateDomainContact(_ input: UpdateDomainContactRequest) throws -> UpdateDomainContactResponse {
        return try client.send(operation: "UpdateDomainContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
    public func listDomains(_ input: ListDomainsRequest) throws -> ListDomainsResponse {
        return try client.send(operation: "ListDomains", path: "/", httpMethod: "POST", input: input)
    }

    ///  This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs). For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see Transferring Registration for a Domain to Amazon Route 53 in the Amazon Route 53 Developer Guide. If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.  If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.  If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.
    public func transferDomain(_ input: TransferDomainRequest) throws -> TransferDomainResponse {
        return try client.send(operation: "TransferDomain", path: "/", httpMethod: "POST", input: input)
    }


}