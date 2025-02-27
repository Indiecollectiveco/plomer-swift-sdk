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
     Add macOS push token
     
     - parameter addMacOsPushTokenRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func addMacOsPushToken(addMacOsPushTokenRequest: AddMacOsPushTokenRequest, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AddMacOsPushToken200Response, ErrorResponse>) -> Void)) -> RequestTask {
        return addMacOsPushTokenWithRequestBuilder(addMacOsPushTokenRequest: addMacOsPushTokenRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Add macOS push token
     - POST /account/add-macos-push-token
     - Add macOS push token
     - API Key:
       - type: apiKey ApiKey (HEADER)
       - name: apiKey
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter addMacOsPushTokenRequest: (body)  
     - returns: RequestBuilder<AddMacOsPushToken200Response> 
     */
    open class func addMacOsPushTokenWithRequestBuilder(addMacOsPushTokenRequest: AddMacOsPushTokenRequest) -> RequestBuilder<AddMacOsPushToken200Response> {
        let localVariablePath = "/account/add-macos-push-token"
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addMacOsPushTokenRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AddMacOsPushToken200Response>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create account
     
     - parameter createAccountRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createAccount(createAccountRequest: CreateAccountRequest, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AccountWithTokens, ErrorResponse>) -> Void)) -> RequestTask {
        return createAccountWithRequestBuilder(createAccountRequest: createAccountRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create account
     - POST /account
     - Create account
     - API Key:
       - type: apiKey ApiKey (HEADER)
       - name: apiKey
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter createAccountRequest: (body)  
     - returns: RequestBuilder<AccountWithTokens> 
     */
    open class func createAccountWithRequestBuilder(createAccountRequest: CreateAccountRequest) -> RequestBuilder<AccountWithTokens> {
        let localVariablePath = "/account"
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAccountRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountWithTokens>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get account with tokens
     
     - parameter appleId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getAccountWithTokens(appleId: String, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AccountWithTokens, ErrorResponse>) -> Void)) -> RequestTask {
        return getAccountWithTokensWithRequestBuilder(appleId: appleId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get account with tokens
     - GET /account/{appleId}
     - Get account and generate authentication tokens
     - API Key:
       - type: apiKey ApiKey (HEADER)
       - name: apiKey
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter appleId: (path)  
     - returns: RequestBuilder<AccountWithTokens> 
     */
    open class func getAccountWithTokensWithRequestBuilder(appleId: String) -> RequestBuilder<AccountWithTokens> {
        var localVariablePath = "/account/{appleId}"
        let appleIdPreEscape = "\(APIHelper.mapValueToPathItem(appleId))"
        let appleIdPostEscape = appleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appleId}", with: appleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountWithTokens>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Refresh authentication tokens
     
     - parameter refreshTokensRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func refreshTokens(refreshTokensRequest: RefreshTokensRequest, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TokenResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return refreshTokensWithRequestBuilder(refreshTokensRequest: refreshTokensRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Refresh authentication tokens
     - POST /account/refresh-token
     - Generate new access and refresh tokens using a refresh token
     - API Key:
       - type: apiKey ApiKey (HEADER)
       - name: apiKey
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter refreshTokensRequest: (body)  
     - returns: RequestBuilder<TokenResponse> 
     */
    open class func refreshTokensWithRequestBuilder(refreshTokensRequest: RefreshTokensRequest) -> RequestBuilder<TokenResponse> {
        let localVariablePath = "/account/refresh-token"
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: refreshTokensRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TokenResponse>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
