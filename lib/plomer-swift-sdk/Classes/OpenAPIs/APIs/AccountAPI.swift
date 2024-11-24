//
// AccountAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountAPI {

    /**
     Create account
     
     - parameter createAccountRequest: (body)  
     - returns: Account
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createAccount(createAccountRequest: CreateAccountRequest) async throws -> Account {
        return try await createAccountWithRequestBuilder(createAccountRequest: createAccountRequest).execute().body
    }

    /**
     Create account
     - POST /account
     - Create account
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter createAccountRequest: (body)  
     - returns: RequestBuilder<Account> 
     */
    open class func createAccountWithRequestBuilder(createAccountRequest: CreateAccountRequest) -> RequestBuilder<Account> {
        let localVariablePath = "/account"
        let localVariableURLString = plomer-swift-sdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAccountRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = plomer-swift-sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get account
     
     - parameter appleId: (path)  
     - returns: Account
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccount(appleId: String) async throws -> Account {
        return try await getAccountWithRequestBuilder(appleId: appleId).execute().body
    }

    /**
     Get account
     - GET /account/{appleId}
     - Get account
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter appleId: (path)  
     - returns: RequestBuilder<Account> 
     */
    open class func getAccountWithRequestBuilder(appleId: String) -> RequestBuilder<Account> {
        var localVariablePath = "/account/{appleId}"
        let appleIdPreEscape = "\(APIHelper.mapValueToPathItem(appleId))"
        let appleIdPostEscape = appleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appleId}", with: appleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = plomer-swift-sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = plomer-swift-sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
