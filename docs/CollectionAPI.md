# CollectionAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProfileToCollection**](CollectionAPI.md#addprofiletocollection) | **POST** /collection/{id}/profiles/{profileId} | Add monitoring profile to collection
[**createCollection**](CollectionAPI.md#createcollection) | **POST** /collection&quot; | Create collection
[**deleteCollection**](CollectionAPI.md#deletecollection) | **DELETE** /collection/{id} | Delete collection
[**getCollection**](CollectionAPI.md#getcollection) | **GET** /collection/{id} | Get collection with profiles
[**getCollections**](CollectionAPI.md#getcollections) | **GET** /collection | Get collections
[**removeProfileFromCollection**](CollectionAPI.md#removeprofilefromcollection) | **DELETE** /collection/{id}/profiles/{profileId} | Remove monitoring profile from collection
[**updateCollection**](CollectionAPI.md#updatecollection) | **PATCH** /collection/{id} | Update collection


# **addProfileToCollection**
```swift
    open class func addProfileToCollection(id: Double, profileId: Double, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Add monitoring profile to collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 
let profileId = 987 // Double | 

// Add monitoring profile to collection
CollectionAPI.addProfileToCollection(id: id, profileId: profileId) { (response, error) in
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
 **profileId** | **Double** |  | 

### Return type

[**AddMacOsPushToken200Response**](AddMacOsPushToken200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCollection**
```swift
    open class func createCollection(createCollection: CreateCollection? = nil, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Create collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let createCollection = CreateCollection(name: "name_example", description: "description_example") // CreateCollection |  (optional)

// Create collection
CollectionAPI.createCollection(createCollection: createCollection) { (response, error) in
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
 **createCollection** | [**CreateCollection**](CreateCollection.md) |  | [optional] 

### Return type

[**Collection**](Collection.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
```swift
    open class func deleteCollection(id: Double, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Delete collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Delete collection
CollectionAPI.deleteCollection(id: id) { (response, error) in
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

# **getCollection**
```swift
    open class func getCollection(id: Double, completion: @escaping (_ data: CollectionWithProfiles?, _ error: Error?) -> Void)
```

Get collection with profiles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 

// Get collection with profiles
CollectionAPI.getCollection(id: id) { (response, error) in
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

[**CollectionWithProfiles**](CollectionWithProfiles.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollections**
```swift
    open class func getCollections(completion: @escaping (_ data: [Collection]?, _ error: Error?) -> Void)
```

Get collections

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk


// Get collections
CollectionAPI.getCollections() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[Collection]**](Collection.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeProfileFromCollection**
```swift
    open class func removeProfileFromCollection(id: Double, profileId: Double, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Remove monitoring profile from collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 
let profileId = 987 // Double | 

// Remove monitoring profile from collection
CollectionAPI.removeProfileFromCollection(id: id, profileId: profileId) { (response, error) in
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
 **profileId** | **Double** |  | 

### Return type

[**AddMacOsPushToken200Response**](AddMacOsPushToken200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollection**
```swift
    open class func updateCollection(id: Double, updateCollection: UpdateCollection? = nil, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Update collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let id = 987 // Double | 
let updateCollection = UpdateCollection(name: "name_example", description: "description_example") // UpdateCollection |  (optional)

// Update collection
CollectionAPI.updateCollection(id: id, updateCollection: updateCollection) { (response, error) in
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
 **updateCollection** | [**UpdateCollection**](UpdateCollection.md) |  | [optional] 

### Return type

[**Collection**](Collection.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

