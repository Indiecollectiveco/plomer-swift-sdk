# PlomerEventAPI

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEvent**](PlomerEventAPI.md#createevent) | **POST** /v1/events | Create event
[**deleteEvent**](PlomerEventAPI.md#deleteevent) | **DELETE** /v1/events/{id} | Delete event
[**getEvent**](PlomerEventAPI.md#getevent) | **GET** /v1/events/{id} | Get event
[**getEvents**](PlomerEventAPI.md#getevents) | **GET** /v1/events/ | Get events
[**updateEvent**](PlomerEventAPI.md#updateevent) | **PATCH** /v1/events/{id} | Update event


# **createEvent**
```swift
    open class func createEvent(createNotificationRequest: CreateNotificationRequest, completion: @escaping (_ data: PlomerEvent?, _ error: Error?) -> Void)
```

Create event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let createNotificationRequest = createNotification_request(text: "text_example", type: "type_example", sendNotification: false, source: "source_example") // CreateNotificationRequest | 

// Create event
PlomerEventAPI.createEvent(createNotificationRequest: createNotificationRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNotificationRequest** | [**CreateNotificationRequest**](CreateNotificationRequest.md) |  | 

### Return type

[**PlomerEvent**](PlomerEvent.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEvent**
```swift
    open class func deleteEvent(id: Double, completion: @escaping (_ data: DeleteAccount200Response?, _ error: Error?) -> Void)
```

Delete event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Delete event
PlomerEventAPI.deleteEvent(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Double** |  | 

### Return type

[**DeleteAccount200Response**](DeleteAccount200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvent**
```swift
    open class func getEvent(id: Double, completion: @escaping (_ data: PlomerEvent?, _ error: Error?) -> Void)
```

Get event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Get event
PlomerEventAPI.getEvent(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Double** |  | 

### Return type

[**PlomerEvent**](PlomerEvent.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvents**
```swift
    open class func getEvents(limit: Double? = nil, page: Double? = nil, completion: @escaping (_ data: GetEvents200Response?, _ error: Error?) -> Void)
```

Get events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let limit = 987 // Double |  (optional) (default to 10)
let page = 987 // Double |  (optional) (default to 0)

// Get events
PlomerEventAPI.getEvents(limit: limit, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Double** |  | [optional] [default to 10]
 **page** | **Double** |  | [optional] [default to 0]

### Return type

[**GetEvents200Response**](GetEvents200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEvent**
```swift
    open class func updateEvent(id: Double, updateNotificationRequest: UpdateNotificationRequest, completion: @escaping (_ data: PlomerEvent?, _ error: Error?) -> Void)
```

Update event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 
let updateNotificationRequest = updateNotification_request(read: false) // UpdateNotificationRequest | 

// Update event
PlomerEventAPI.updateEvent(id: id, updateNotificationRequest: updateNotificationRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Double** |  | 
 **updateNotificationRequest** | [**UpdateNotificationRequest**](UpdateNotificationRequest.md) |  | 

### Return type

[**PlomerEvent**](PlomerEvent.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

