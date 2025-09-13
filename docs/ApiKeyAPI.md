# ApiKeyAPI

All URIs are relative to *https://devapi.plomer.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](ApiKeyAPI.md#createapikey) | **POST** /api-key | Create API key
[**deleteApiKey**](ApiKeyAPI.md#deleteapikey) | **DELETE** /api-key/{id} | Delete API key


# **createApiKey**
```swift
    open class func createApiKey(createApiKey: CreateApiKey? = nil, completion: @escaping (_ data: ApiKey?, _ error: Error?) -> Void)
```

Create API key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let createApiKey = CreateApiKey(name: "name_example", expiresAt: Date()) // CreateApiKey |  (optional)

// Create API key
ApiKeyAPI.createApiKey(createApiKey: createApiKey) { (response, error) in
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
 **createApiKey** | [**CreateApiKey**](CreateApiKey.md) |  | [optional] 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiKey**
```swift
    open class func deleteApiKey(id: Double, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Delete API key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Delete API key
ApiKeyAPI.deleteApiKey(id: id) { (response, error) in
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

