# AccountAPI

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMacOsPushToken**](AccountAPI.md#addmacospushtoken) | **POST** /account/add-macos-push-token | Add macOS push token
[**createAccount**](AccountAPI.md#createaccount) | **POST** /account | Create account
[**getAccountWithTokens**](AccountAPI.md#getaccountwithtokens) | **GET** /account/{appleId} | Get account with tokens
[**refreshTokens**](AccountAPI.md#refreshtokens) | **POST** /account/refresh-token | Refresh authentication tokens


# **addMacOsPushToken**
```swift
    open class func addMacOsPushToken(addMacOsPushTokenRequest: AddMacOsPushTokenRequest, completion: @escaping (_ data: AddMacOsPushToken200Response?, _ error: Error?) -> Void)
```

Add macOS push token

Add macOS push token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let addMacOsPushTokenRequest = addMacOsPushToken_request(token: "token_example") // AddMacOsPushTokenRequest | 

// Add macOS push token
AccountAPI.addMacOsPushToken(addMacOsPushTokenRequest: addMacOsPushTokenRequest) { (response, error) in
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
 **addMacOsPushTokenRequest** | [**AddMacOsPushTokenRequest**](AddMacOsPushTokenRequest.md) |  | 

### Return type

[**AddMacOsPushToken200Response**](AddMacOsPushToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccount**
```swift
    open class func createAccount(createAccountRequest: CreateAccountRequest, completion: @escaping (_ data: Account?, _ error: Error?) -> Void)
```

Create account

Create account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let createAccountRequest = createAccount_request(appleId: "appleId_example", email: "email_example", name: "name_example", enablePushNotifications: false, identityToken: "identityToken_example", authCode: "authCode_example") // CreateAccountRequest | 

// Create account
AccountAPI.createAccount(createAccountRequest: createAccountRequest) { (response, error) in
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
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md) |  | 

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountWithTokens**
```swift
    open class func getAccountWithTokens(appleId: String, completion: @escaping (_ data: AccountWithTokens?, _ error: Error?) -> Void)
```

Get account with tokens

Get account and generate authentication tokens

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let appleId = "appleId_example" // String | 

// Get account with tokens
AccountAPI.getAccountWithTokens(appleId: appleId) { (response, error) in
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
 **appleId** | **String** |  | 

### Return type

[**AccountWithTokens**](AccountWithTokens.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshTokens**
```swift
    open class func refreshTokens(refreshTokensRequest: RefreshTokensRequest, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

Refresh authentication tokens

Generate new access and refresh tokens using a refresh token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk

let refreshTokensRequest = refreshTokens_request(refreshToken: "refreshToken_example") // RefreshTokensRequest | 

// Refresh authentication tokens
AccountAPI.refreshTokens(refreshTokensRequest: refreshTokensRequest) { (response, error) in
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
 **refreshTokensRequest** | [**RefreshTokensRequest**](RefreshTokensRequest.md) |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

