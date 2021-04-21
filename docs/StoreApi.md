# PSPetOnlineStore.PSPetOnlineStore/Api.StoreApi

All URIs are relative to *http://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteOrder**](StoreApi.md#Invoke-DeleteOrder) | **DELETE** /store/order/{orderId} | Delete purchase order by ID
[**Get-Inventory**](StoreApi.md#Get-Inventory) | **GET** /store/inventory | Returns pet inventories by status
[**Get-OrderById**](StoreApi.md#Get-OrderById) | **GET** /store/order/{orderId} | Find purchase order by ID
[**Invoke-PlaceOrder**](StoreApi.md#Invoke-PlaceOrder) | **POST** /store/order | Place an order for a pet


<a name="Invoke-DeleteOrder"></a>
# **Invoke-DeleteOrder**
> void Invoke-DeleteOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderId] <String><br>

Delete purchase order by ID

For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors

### Example
```powershell
$OrderId = "OrderId_example" # String | ID of the order that needs to be deleted

# Delete purchase order by ID
try {
     $Result = Invoke-DeleteOrder -OrderId $OrderId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteOrder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderId** | **String**| ID of the order that needs to be deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Inventory"></a>
# **Get-Inventory**
> System.Collections.Hashtable Get-Inventory<br>

Returns pet inventories by status

Returns a map of status codes to quantities

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: api_key
$Configuration.ApiKey.api_key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.api_key = "Bearer"


# Returns pet inventories by status
try {
     $Result = Get-Inventory
} catch {
    Write-Host ("Exception occured when calling Get-Inventory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**System.Collections.Hashtable**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OrderById"></a>
# **Get-OrderById**
> Order Get-OrderById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderId] <Int64><br>

Find purchase order by ID

For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions

### Example
```powershell
$OrderId = 987 # Int64 | ID of pet that needs to be fetched

# Find purchase order by ID
try {
     $Result = Get-OrderById -OrderId $OrderId
} catch {
    Write-Host ("Exception occured when calling Get-OrderById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderId** | **Int64**| ID of pet that needs to be fetched | 

### Return type

[**Order**](Order.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PlaceOrder"></a>
# **Invoke-PlaceOrder**
> Order Invoke-PlaceOrder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Order] <PSCustomObject><br>

Place an order for a pet

### Example
```powershell
$Order = (Initialize-Order -Id 123 -PetId 123 -Quantity 123 -ShipDate Get-Date -Status "placed" -Complete $false) # Order | order placed for purchasing the pet

# Place an order for a pet
try {
     $Result = Invoke-PlaceOrder -Order $Order
} catch {
    Write-Host ("Exception occured when calling Invoke-PlaceOrder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Order** | [**Order**](Order.md)| order placed for purchasing the pet | 

### Return type

[**Order**](Order.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

