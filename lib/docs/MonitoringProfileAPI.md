# MonitoringProfileAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMonitoringProfile**](MonitoringProfileAPI.md#createmonitoringprofile) | **POST** /monitoring-profile | Create monitoring profile
[**deleteMonitoringProfile**](MonitoringProfileAPI.md#deletemonitoringprofile) | **DELETE** /monitoring-profile/{id} | Delete monitoring profile
[**getMonitoringProfile**](MonitoringProfileAPI.md#getmonitoringprofile) | **GET** /monitoring-profile/{id} | Get monitoring profile
[**getMonitoringProfileRegistrarData**](MonitoringProfileAPI.md#getmonitoringprofileregistrardata) | **GET** /monitoring-profile/{id}/registrar-data | Get monitoring profile registrar data
[**getMonitoringProfiles**](MonitoringProfileAPI.md#getmonitoringprofiles) | **GET** /monitoring-profile | Get monitoring profiles
[**updateMonitoringProfile**](MonitoringProfileAPI.md#updatemonitoringprofile) | **PATCH** /monitoring-profile/{id} | Update monitoring profile


# **createMonitoringProfile**
```swift
    open class func createMonitoringProfile(accountId: Double, createMonitoringProfile: CreateMonitoringProfile? = nil, completion: @escaping (_ data: MonitoringProfile?, _ error: Error?) -> Void)
```

Create monitoring profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let createMonitoringProfile = CreateMonitoringProfile(url: "url_example", httpStatusChecks: false, timeoutSeconds: 123, intervalSeconds: 123, healthyThresholdCount: 123, unhealthyThresholdCount: 123, domainExpiryCheck: false, sslExpiryCheck: false, contentChangeDetection: false, description: "description_example", tags: ["tags_example"]) // CreateMonitoringProfile |  (optional)

// Create monitoring profile
MonitoringProfileAPI.createMonitoringProfile(accountId: accountId, createMonitoringProfile: createMonitoringProfile) { (response, error) in
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
 **createMonitoringProfile** | [**CreateMonitoringProfile**](CreateMonitoringProfile.md) |  | [optional] 

### Return type

[**MonitoringProfile**](MonitoringProfile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMonitoringProfile**
```swift
    open class func deleteMonitoringProfile(accountId: Double, id: Double, completion: @escaping (_ data: DeleteMonitoringProfile200Response?, _ error: Error?) -> Void)
```

Delete monitoring profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 

// Delete monitoring profile
MonitoringProfileAPI.deleteMonitoringProfile(accountId: accountId, id: id) { (response, error) in
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

# **getMonitoringProfile**
```swift
    open class func getMonitoringProfile(accountId: Double, id: Double, completion: @escaping (_ data: MonitoringProfile?, _ error: Error?) -> Void)
```

Get monitoring profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 

// Get monitoring profile
MonitoringProfileAPI.getMonitoringProfile(accountId: accountId, id: id) { (response, error) in
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

[**MonitoringProfile**](MonitoringProfile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringProfileRegistrarData**
```swift
    open class func getMonitoringProfileRegistrarData(accountId: Double, id: Double, completion: @escaping (_ data: RegistrarData?, _ error: Error?) -> Void)
```

Get monitoring profile registrar data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 

// Get monitoring profile registrar data
MonitoringProfileAPI.getMonitoringProfileRegistrarData(accountId: accountId, id: id) { (response, error) in
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

[**RegistrarData**](RegistrarData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringProfiles**
```swift
    open class func getMonitoringProfiles(accountId: Double, completion: @escaping (_ data: [MonitoringProfile]?, _ error: Error?) -> Void)
```

Get monitoring profiles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 

// Get monitoring profiles
MonitoringProfileAPI.getMonitoringProfiles(accountId: accountId) { (response, error) in
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

### Return type

[**[MonitoringProfile]**](MonitoringProfile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMonitoringProfile**
```swift
    open class func updateMonitoringProfile(accountId: Double, id: Double, updateMonitoringProfile: UpdateMonitoringProfile? = nil, completion: @escaping (_ data: MonitoringProfile?, _ error: Error?) -> Void)
```

Update monitoring profile

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import plomer-swift-sdk

let accountId = 987 // Double | 
let id = 987 // Double | 
let updateMonitoringProfile = UpdateMonitoringProfile(url: "url_example", httpStatusChecks: false, timeoutSeconds: 123, intervalSeconds: 123, healthyThresholdCount: 123, unhealthyThresholdCount: 123, domainExpiryCheck: false, sslExpiryCheck: false, contentChangeDetection: false, description: "description_example", tags: ["tags_example"]) // UpdateMonitoringProfile |  (optional)

// Update monitoring profile
MonitoringProfileAPI.updateMonitoringProfile(accountId: accountId, id: id, updateMonitoringProfile: updateMonitoringProfile) { (response, error) in
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
 **updateMonitoringProfile** | [**UpdateMonitoringProfile**](UpdateMonitoringProfile.md) |  | [optional] 

### Return type

[**MonitoringProfile**](MonitoringProfile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

