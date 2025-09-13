# DowntimeAPI

All URIs are relative to *https://devapi.plomer.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActiveDowntimeIncidents**](DowntimeAPI.md#getactivedowntimeincidents) | **GET** /downtime/active | Get active downtime incidents
[**getDowntimeIncidents**](DowntimeAPI.md#getdowntimeincidents) | **GET** /downtime/incidents | Get downtime incidents
[**getDowntimeStats**](DowntimeAPI.md#getdowntimestats) | **GET** /downtime/stats | Get downtime statistics


# **getActiveDowntimeIncidents**
```swift
    open class func getActiveDowntimeIncidents(monitoringProfileId: Double? = nil, completion: @escaping (_ data: [DowntimeIncident]?, _ error: Error?) -> Void)
```

Get active downtime incidents

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let monitoringProfileId = 987 // Double |  (optional)

// Get active downtime incidents
DowntimeAPI.getActiveDowntimeIncidents(monitoringProfileId: monitoringProfileId) { (response, error) in
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
 **monitoringProfileId** | **Double** |  | [optional] 

### Return type

[**[DowntimeIncident]**](DowntimeIncident.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDowntimeIncidents**
```swift
    open class func getDowntimeIncidents(monitoringProfileId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, includeResolved: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: GetDowntimeIncidents200Response?, _ error: Error?) -> Void)
```

Get downtime incidents

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let monitoringProfileId = "monitoringProfileId_example" // String |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let includeResolved = "includeResolved_example" // String |  (optional) (default to "true")
let limit = 987 // Double |  (optional) (default to 50)
let offset = 987 // Double |  (optional) (default to 0)

// Get downtime incidents
DowntimeAPI.getDowntimeIncidents(monitoringProfileId: monitoringProfileId, startDate: startDate, endDate: endDate, includeResolved: includeResolved, limit: limit, offset: offset) { (response, error) in
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
 **monitoringProfileId** | **String** |  | [optional] 
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **includeResolved** | **String** |  | [optional] [default to &quot;true&quot;]
 **limit** | **Double** |  | [optional] [default to 50]
 **offset** | **Double** |  | [optional] [default to 0]

### Return type

[**GetDowntimeIncidents200Response**](GetDowntimeIncidents200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDowntimeStats**
```swift
    open class func getDowntimeStats(monitoringProfileId: Double? = nil, days: Double? = nil, completion: @escaping (_ data: DowntimeStats?, _ error: Error?) -> Void)
```

Get downtime statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let monitoringProfileId = 987 // Double |  (optional)
let days = 987 // Double |  (optional) (default to 30)

// Get downtime statistics
DowntimeAPI.getDowntimeStats(monitoringProfileId: monitoringProfileId, days: days) { (response, error) in
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
 **monitoringProfileId** | **Double** |  | [optional] 
 **days** | **Double** |  | [optional] [default to 30]

### Return type

[**DowntimeStats**](DowntimeStats.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

