# NotificationAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotification**](NotificationAPI.md#deletenotification) | **DELETE** /notification/{id} | Delete notification
[**getNotification**](NotificationAPI.md#getnotification) | **GET** /notification/{id} | Get notification
[**getNotifications**](NotificationAPI.md#getnotifications) | **GET** /notification | Get notifications
[**updateNotification**](NotificationAPI.md#updatenotification) | **PATCH** /notification/{id} | Update notification


# **deleteNotification**
```swift
    open class func deleteNotification(accountId: Double, id: Double, completion: @escaping (_ data: DeleteMonitoringProfile200Response?, _ error: Error?) -> Void)
```

Delete notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 

// Delete notification
NotificationAPI.deleteNotification(accountId: accountId, id: id) { (response, error) in
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
 **accountId** | **Double** |  | 
 **id** | **Double** |  | 

### Return type

[**DeleteMonitoringProfile200Response**](DeleteMonitoringProfile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotification**
```swift
    open class func getNotification(accountId: Double, id: Double, completion: @escaping (_ data: Notification?, _ error: Error?) -> Void)
```

Get notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 

// Get notification
NotificationAPI.getNotification(accountId: accountId, id: id) { (response, error) in
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
 **accountId** | **Double** |  | 
 **id** | **Double** |  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
```swift
    open class func getNotifications(accountId: Double, limit: Double? = nil, page: Double? = nil, completion: @escaping (_ data: GetNotifications200Response?, _ error: Error?) -> Void)
```

Get notifications

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let limit = 987 // Double |  (optional) (default to 10)
let page = 987 // Double |  (optional) (default to 0)

// Get notifications
NotificationAPI.getNotifications(accountId: accountId, limit: limit, page: page) { (response, error) in
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
 **accountId** | **Double** |  | 
 **limit** | **Double** |  | [optional] [default to 10]
 **page** | **Double** |  | [optional] [default to 0]

### Return type

[**GetNotifications200Response**](GetNotifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNotification**
```swift
    open class func updateNotification(accountId: Double, id: Double, updateNotificationRequest: UpdateNotificationRequest, completion: @escaping (_ data: Notification?, _ error: Error?) -> Void)
```

Update notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 
let updateNotificationRequest = updateNotification_request(read: false) // UpdateNotificationRequest | 

// Update notification
NotificationAPI.updateNotification(accountId: accountId, id: id, updateNotificationRequest: updateNotificationRequest) { (response, error) in
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
 **accountId** | **Double** |  | 
 **id** | **Double** |  | 
 **updateNotificationRequest** | [**UpdateNotificationRequest**](UpdateNotificationRequest.md) |  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

