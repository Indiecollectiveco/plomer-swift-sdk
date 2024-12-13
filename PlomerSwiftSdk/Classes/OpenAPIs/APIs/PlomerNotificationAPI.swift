//
// PlomerNotificationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PlomerNotificationAPI {

    /**
     Delete notification
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func deleteNotification(id: Double, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<DeleteCollection200Response, ErrorResponse>) -> Void)) -> RequestTask {
        return deleteNotificationWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Delete notification
     - DELETE /notification/{id}
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path)  
     - returns: RequestBuilder<DeleteCollection200Response> 
     */
    open class func deleteNotificationWithRequestBuilder(id: Double) -> RequestBuilder<DeleteCollection200Response> {
        var localVariablePath = "/notification/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeleteCollection200Response>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get notification
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getNotification(id: Double, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<GetNotification200Response, ErrorResponse>) -> Void)) -> RequestTask {
        return getNotificationWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get notification
     - GET /notification/{id}
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path)  
     - returns: RequestBuilder<GetNotification200Response> 
     */
    open class func getNotificationWithRequestBuilder(id: Double) -> RequestBuilder<GetNotification200Response> {
        var localVariablePath = "/notification/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetNotification200Response>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get notifications
     
     - parameter limit: (query)  (optional, default to 10)
     - parameter page: (query)  (optional, default to 0)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getNotifications(limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<GetNotifications200Response, ErrorResponse>) -> Void)) -> RequestTask {
        return getNotificationsWithRequestBuilder(limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get notifications
     - GET /notification
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter limit: (query)  (optional, default to 10)
     - parameter page: (query)  (optional, default to 0)
     - returns: RequestBuilder<GetNotifications200Response> 
     */
    open class func getNotificationsWithRequestBuilder(limit: Double? = nil, page: Double? = nil) -> RequestBuilder<GetNotifications200Response> {
        let localVariablePath = "/notification"
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetNotifications200Response>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update notification
     
     - parameter id: (path)  
     - parameter updateNotificationRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func updateNotification(id: Double, updateNotificationRequest: UpdateNotificationRequest, apiResponseQueue: DispatchQueue = PlomerSwiftSdkAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PlomerNotification, ErrorResponse>) -> Void)) -> RequestTask {
        return updateNotificationWithRequestBuilder(id: id, updateNotificationRequest: updateNotificationRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Update notification
     - PATCH /notification/{id}
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter id: (path)  
     - parameter updateNotificationRequest: (body)  
     - returns: RequestBuilder<PlomerNotification> 
     */
    open class func updateNotificationWithRequestBuilder(id: Double, updateNotificationRequest: UpdateNotificationRequest) -> RequestBuilder<PlomerNotification> {
        var localVariablePath = "/notification/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = PlomerSwiftSdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateNotificationRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlomerNotification>.Type = PlomerSwiftSdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
