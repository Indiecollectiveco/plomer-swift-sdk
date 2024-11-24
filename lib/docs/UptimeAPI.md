# UptimeAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUptime**](UptimeAPI.md#getuptime) | **GET** /uptime | Get uptime


# **getUptime**
```swift
    open class func getUptime(monitoringProfileId: Double, days: Double? = nil, completion: @escaping (_ data: [UptimeItem]?, _ error: Error?) -> Void)
```

Get uptime

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let monitoringProfileId = 987 // Double | 
let days = 987 // Double |  (optional)

// Get uptime
UptimeAPI.getUptime(monitoringProfileId: monitoringProfileId, days: days) { (response, error) in
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
 **monitoringProfileId** | **Double** |  | 
 **days** | **Double** |  | [optional] 

### Return type

[**[UptimeItem]**](UptimeItem.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
