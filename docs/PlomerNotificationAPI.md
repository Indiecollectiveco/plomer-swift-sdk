# PlomerNotificationAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotification**](PlomerNotificationAPI.md#deletenotification) | **DELETE** /notification/{id} | Delete notification
[**getNotification**](PlomerNotificationAPI.md#getnotification) | **GET** /notification/{id} | Get notification
[**getNotifications**](PlomerNotificationAPI.md#getnotifications) | **GET** /notification | Get notifications


# **deleteNotification**
```swift
    open class func deleteNotification(id: Double, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Delete notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Delete notification
PlomerNotificationAPI.deleteNotification(id: id) { (response, error) in
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

[**AddMacOsPushToken200Response**](AddMacOsPushToken200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotification**
```swift
    open class func getNotification(id: Double, completion: @escaping (_ data: PlomerNotification?, _ error: Error?) -> Void)
```

Get notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Get notification
PlomerNotificationAPI.getNotification(id: id) { (response, error) in
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

[**PlomerNotification**](PlomerNotification.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
```swift
    open class func getNotifications(limit: Double? = nil, page: Double? = nil, completion: @escaping (_ data: GetNotifications200Response?, _ error: Error?) -> Void)
```

Get notifications

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let limit = 987 // Double |  (optional) (default to 10)
let page = 987 // Double |  (optional) (default to 0)

// Get notifications
PlomerNotificationAPI.getNotifications(limit: limit, page: page) { (response, error) in
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

[**GetNotifications200Response**](GetNotifications200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

