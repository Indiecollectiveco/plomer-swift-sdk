# UptimeAPI

All URIs are relative to *https://devapi.plomer.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUptime**](UptimeAPI.md#getuptime) | **GET** /uptime | Get uptime


# **getUptime**
```swift
    open class func getUptime(monitoringProfileId: Double, days: Double? = nil, granularity: Granularity_getUptime? = nil, completion: @escaping (_ data: [UptimeItem]?, _ error: Error?) -> Void)
```

Get uptime

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let monitoringProfileId = 987 // Double | 
let days = 987 // Double |  (optional)
let granularity = "granularity_example" // String |  (optional) (default to .day)

// Get uptime
UptimeAPI.getUptime(monitoringProfileId: monitoringProfileId, days: days, granularity: granularity) { (response, error) in
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
 **granularity** | **String** |  | [optional] [default to .day]

### Return type

[**[UptimeItem]**](UptimeItem.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

