# ProductsAPI

All URIs are relative to *https://devapi.plomer.app*

| Method                                        | HTTP request      | Description            |
| --------------------------------------------- | ----------------- | ---------------------- |
| [**getProducts**](ProductsAPI.md#getproducts) | **GET** /products | Get available products |

# **getProducts**

```swift
    open class func getProducts(completion: @escaping (_ data: [Product]?, _ error: Error?) -> Void)
```

Get available products

### Example

```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import PlomerSwiftSdk


// Get available products
ProductsAPI.getProducts() { (response, error) in
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

[**[Product]**](Product.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
