# UptimeAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUptime**](UptimeAPI.md#getuptime) | **GET** /uptime/ | Get uptime


# **getUptime**
```swift
    open class func getUptime(monitoringProfile: String, accountId: Double, completion: @escaping (_ data: [UptimeItem]?, _ error: Error?) -> Void)
```

Get uptime

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let monitoringProfile = "monitoringProfile_example" // String | 
let accountId = 987 // Double | 

// Get uptime
UptimeAPI.getUptime(monitoringProfile: monitoringProfile, accountId: accountId) { (response, error) in
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
 **monitoringProfile** | **String** |  | 
 **accountId** | **Double** |  | 

### Return type

[**[UptimeItem]**](UptimeItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

