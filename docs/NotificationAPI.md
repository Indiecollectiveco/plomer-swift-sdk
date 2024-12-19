# NotificationAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateNotification**](NotificationAPI.md#updatenotification) | **PATCH** /notification/{id} | Update notification


# **updateNotification**
```swift
    open class func updateNotification(id: Double, updateNotificationRequest: UpdateNotificationRequest, completion: @escaping (_ data: PlomerNotification?, _ error: Error?) -> Void)
```

Update notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 
let updateNotificationRequest = updateNotification_request(read: false) // UpdateNotificationRequest | 

// Update notification
NotificationAPI.updateNotification(id: id, updateNotificationRequest: updateNotificationRequest) { (response, error) in
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

[**PlomerNotification**](PlomerNotification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

