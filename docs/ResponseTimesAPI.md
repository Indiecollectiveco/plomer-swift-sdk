# ResponseTimesAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getResponseTimes**](ResponseTimesAPI.md#getresponsetimes) | **GET** /response-times | Get response times


# **getResponseTimes**
```swift
    open class func getResponseTimes(monitoringProfileId: Int, limit: Double? = nil, page: Double? = nil, completion: @escaping (_ data: GetResponseTimes200Response?, _ error: Error?) -> Void)
```

Get response times

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let monitoringProfileId = 987 // Int | 
let limit = 987 // Double |  (optional) (default to 10)
let page = 987 // Double |  (optional) (default to 0)

// Get response times
ResponseTimesAPI.getResponseTimes(monitoringProfileId: monitoringProfileId, limit: limit, page: page) { (response, error) in
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
 **monitoringProfileId** | **Int** |  | 
 **limit** | **Double** |  | [optional] [default to 10]
 **page** | **Double** |  | [optional] [default to 0]

### Return type

[**GetResponseTimes200Response**](GetResponseTimes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

