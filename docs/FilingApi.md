# IntrinioSDK::FilingApi

All URIs are relative to *https://api-v2.intrinio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get8k_filing_by_id**](FilingApi.md#get8k_filing_by_id) | **GET** /filings/8K/{identifier} | Lookup 8-K Filing
[**get_all8k_filings**](FilingApi.md#get_all8k_filings) | **GET** /filings/8K | All 8-K Filings
[**get_all_filings**](FilingApi.md#get_all_filings) | **GET** /filings | All Filings
[**get_all_notes**](FilingApi.md#get_all_notes) | **GET** /filings/notes | All Filing Notes
[**get_filing_by_id**](FilingApi.md#get_filing_by_id) | **GET** /filings/{id} | Lookup Filing
[**get_filing_fundamentals**](FilingApi.md#get_filing_fundamentals) | **GET** /filings/{identifier}/fundamentals | All Fundamentals by Filing
[**get_note**](FilingApi.md#get_note) | **GET** /filings/notes/{identifier} | Filing Note by ID
[**get_note_html**](FilingApi.md#get_note_html) | **GET** /filings/notes/{identifier}/html | Filing Note HTML
[**get_note_text**](FilingApi.md#get_note_text) | **GET** /filings/notes/{identifier}/text | Filing Note Text
[**search8k_filings**](FilingApi.md#search8k_filings) | **GET** /filings/8K/search | Search 8-K Filings
[**search8k_filings_bulk**](FilingApi.md#search8k_filings_bulk) | **GET** /filings/8K/search/bulk | Search 8-K Filings (Bulk Response)
[**search_notes**](FilingApi.md#search_notes) | **GET** /filings/notes/search | Search Filing Notes



[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get8k_filing_by_id)

[//]: # (RETURN_TYPE:::Filing8k)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:Filing8k.md)

[//]: # (OPERATION:get8k_filing_by_id_v2)

[//]: # (ENDPOINT:/filings/8K/{identifier})

[//]: # (DOCUMENT_LINK:FilingApi.md#get8k_filing_by_id)

# **get8k_filing_by_id**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get8k_filing_by_id_v2)

[//]: # (START_OVERVIEW)

> Filing8k get8k_filing_by_id(identifier, opts)

#### Lookup 8-K Filing


Returns the extracted content from the specified 8-K filing

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
identifier <- "fil_olrQm6" # Character | The Intrinio ID of an 8-K filing

# Optional params
opts <- list(
  format = "html", # Character | Format of the 8-K content to return.
  query = NULL # Character | Full-text search parameters. These can include logical operators like AND, OR, NOT and parentheses. This is typically the same query used when calling the 8-K Search endpoint. Matching content snippets will be returned in the response when a query is provided.
)

response <- FilingApi$get8k_filing_by_id(identifier, opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **Character**| The Intrinio ID of an 8-K filing | 
 **format** | **Character**| Format of the 8-K content to return. | [default to html]
 **query** | **Character**| Full-text search parameters. These can include logical operators like AND, OR, NOT and parentheses. This is typically the same query used when calling the 8-K Search endpoint. Matching content snippets will be returned in the response when a query is provided. | 

[//]: # (END_PARAMETERS)

### Return type

[**Filing8k**](Filing8k.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_all8k_filings)

[//]: # (RETURN_TYPE:::ApiResponseFiling8ks)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFiling8ks.md)

[//]: # (OPERATION:get_all8k_filings_v2)

[//]: # (ENDPOINT:/filings/8K)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_all8k_filings)

# **get_all8k_filings**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_all8k_filings_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFiling8ks get_all8k_filings(opts)

#### All 8-K Filings


Returns all 8-K filings. When parameters are specified, returns matching 8-K filings.

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Optional params
opts <- list(
  company = "AAPL", # Character | A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  start_date = NULL, # Date | Return 8-K filings filed on or after the given date
  end_date = NULL, # Date | Return 8-K filings filed on or before the given date
  item_code = NULL, # Character | Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the <a href=https://www.sec.gov/fast-answers/answersform8khtm.html target=_blank>SEC website</a>.
  page_size = 100, # Integer | The number of results to return
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$get_all8k_filings(opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | **Character**| A Company identifier (Ticker, CIK, LEI, Intrinio ID) | 
 **start_date** | **Date**| Return 8-K filings filed on or after the given date | 
 **end_date** | **Date**| Return 8-K filings filed on or before the given date | 
 **item_code** | **Character**| Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the &lt;a href&#x3D;https://www.sec.gov/fast-answers/answersform8khtm.html target&#x3D;_blank&gt;SEC website&lt;/a&gt;. | 
 **page_size** | **Integer**| The number of results to return | [default to 100]
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFiling8ks**](ApiResponseFiling8ks.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_all_filings)

[//]: # (RETURN_TYPE:::ApiResponseFilings)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFilings.md)

[//]: # (OPERATION:get_all_filings_v2)

[//]: # (ENDPOINT:/filings)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_all_filings)

# **get_all_filings**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_all_filings_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFilings get_all_filings(company, opts)

#### All Filings


Returns all Filings. Returns Filings matching parameters when supplied.

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
company <- "AAPL" # Character | Filings for the given `company` identifier (ticker, CIK, LEI, Intrinio ID)

# Optional params
opts <- list(
  report_type = NULL, # Character | Filter by report type. Separate values with commas to return multiple The filing <a href=\"/documentation/sec_filing_report_types\" target=\"_blank\">report types</a>.
  start_date = as.Date("2015-01-01"), # Date | Filed on or after the given date
  end_date = NULL, # Date | Filed before or after the given date
  page_size = 100, # Integer | The number of results to return
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$get_all_filings(company, opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | **Character**| Filings for the given &#x60;company&#x60; identifier (ticker, CIK, LEI, Intrinio ID) | 
 **report_type** | **Character**| Filter by report type. Separate values with commas to return multiple The filing &lt;a href&#x3D;\&quot;/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report types&lt;/a&gt;. | 
 **start_date** | **Date**| Filed on or after the given date | 
 **end_date** | **Date**| Filed before or after the given date | 
 **page_size** | **Integer**| The number of results to return | [default to 100]
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFilings**](ApiResponseFilings.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_all_notes)

[//]: # (RETURN_TYPE:::ApiResponseFilingNotes)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFilingNotes.md)

[//]: # (OPERATION:get_all_notes_v2)

[//]: # (ENDPOINT:/filings/notes)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_all_notes)

# **get_all_notes**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_all_notes_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFilingNotes get_all_notes(opts)

#### All Filing Notes


Return all Notes from all Filings, most-recent first. Returns notes matching parameters when supplied.

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Optional params
opts <- list(
  company = "AAPL", # Character | A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  report_type = "10-Q", # Character | Notes contained in filings that match the given <a href=\"/documentation/sec_filing_report_types\" target=\"_blank\">report type</a>
  filing_start_date = NULL, # Date | Limit search to filings on or after this date
  filing_end_date = NULL, # Date | Limit search to filings on or before this date
  period_ended_start_date = NULL, # Date | Limit search to filings with a period end date on or after this date
  period_ended_end_date = NULL, # Date | Limit search to filings with a period end date on or before this date
  page_size = 100, # Integer | The number of results to return
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$get_all_notes(opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | **Character**| A Company identifier (Ticker, CIK, LEI, Intrinio ID) | 
 **report_type** | **Character**| Notes contained in filings that match the given &lt;a href&#x3D;\&quot;/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report type&lt;/a&gt; | 
 **filing_start_date** | **Date**| Limit search to filings on or after this date | 
 **filing_end_date** | **Date**| Limit search to filings on or before this date | 
 **period_ended_start_date** | **Date**| Limit search to filings with a period end date on or after this date | 
 **period_ended_end_date** | **Date**| Limit search to filings with a period end date on or before this date | 
 **page_size** | **Integer**| The number of results to return | [default to 100]
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFilingNotes**](ApiResponseFilingNotes.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_filing_by_id)

[//]: # (RETURN_TYPE:::Filing)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:Filing.md)

[//]: # (OPERATION:get_filing_by_id_v2)

[//]: # (ENDPOINT:/filings/{id})

[//]: # (DOCUMENT_LINK:FilingApi.md#get_filing_by_id)

# **get_filing_by_id**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_filing_by_id_v2)

[//]: # (START_OVERVIEW)

> Filing get_filing_by_id(id)

#### Lookup Filing


Returns the Filing with the given `identifier`

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
id <- "fil_7Kn2P6" # Character | The Intrinio ID of the Filing

response <- FilingApi$get_filing_by_id(id)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Character**| The Intrinio ID of the Filing | 

[//]: # (END_PARAMETERS)

### Return type

[**Filing**](Filing.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_filing_fundamentals)

[//]: # (RETURN_TYPE:::ApiResponseFilingFundamentals)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFilingFundamentals.md)

[//]: # (OPERATION:get_filing_fundamentals_v2)

[//]: # (ENDPOINT:/filings/{identifier}/fundamentals)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_filing_fundamentals)

# **get_filing_fundamentals**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_filing_fundamentals_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFilingFundamentals get_filing_fundamentals(identifier, opts)

#### All Fundamentals by Filing


Returns all Fundamentals for the SEC Filing with the given `identifier`. Returns Fundamentals matching parameters when supplied.

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
identifier <- "fil_B73xBG" # Character | A Filing identifier

# Optional params
opts <- list(
  statement_code = NULL, # Character | Filters fundamentals by statement code
  type = NULL, # Character | Filters fundamentals by type
  fiscal_year = NULL, # Integer | Filters fundamentals by fiscal year
  fiscal_period = NULL, # Character | Filters fundamentals by fiscal period
  start_date = NULL, # Date | Returns fundamentals on or after the given date
  end_date = NULL, # Date | Returns fundamentals on or before the given date
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$get_filing_fundamentals(identifier, opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **Character**| A Filing identifier | 
 **statement_code** | **Character**| Filters fundamentals by statement code | 
 **type** | **Character**| Filters fundamentals by type | 
 **fiscal_year** | **Integer**| Filters fundamentals by fiscal year | 
 **fiscal_period** | **Character**| Filters fundamentals by fiscal period | 
 **start_date** | **Date**| Returns fundamentals on or after the given date | 
 **end_date** | **Date**| Returns fundamentals on or before the given date | 
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFilingFundamentals**](ApiResponseFilingFundamentals.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_note)

[//]: # (RETURN_TYPE:::FilingNote)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:FilingNote.md)

[//]: # (OPERATION:get_note_v2)

[//]: # (ENDPOINT:/filings/notes/{identifier})

[//]: # (DOCUMENT_LINK:FilingApi.md#get_note)

# **get_note**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_note_v2)

[//]: # (START_OVERVIEW)

> FilingNote get_note(identifier, opts)

#### Filing Note by ID



[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
identifier <- "xbn_ydK3QL" # Character | The Intrinio ID of the filing note

# Optional params
opts <- list(
  content_format = "text" # Character | Returns content in html (as filed) or plain text
)

response <- FilingApi$get_note(identifier, opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **Character**| The Intrinio ID of the filing note | 
 **content_format** | **Character**| Returns content in html (as filed) or plain text | [default to text]

[//]: # (END_PARAMETERS)

### Return type

[**FilingNote**](FilingNote.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_note_html)

[//]: # (RETURN_TYPE:Character)

[//]: # (RETURN_TYPE_KIND:primitive)

[//]: # (RETURN_TYPE_DOC:)

[//]: # (OPERATION:get_note_html_v2)

[//]: # (ENDPOINT:/filings/notes/{identifier}/html)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_note_html)

# **get_note_html**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_note_html_v2)

[//]: # (START_OVERVIEW)

> Character get_note_html(identifier)

#### Filing Note HTML



[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
identifier <- "xbn_ydK3QL" # Character | The Intrinio ID of the filing note

response <- FilingApi$get_note_html(identifier)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **Character**| The Intrinio ID of the filing note | 

[//]: # (END_PARAMETERS)

### Return type

**Character**

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:get_note_text)

[//]: # (RETURN_TYPE:Character)

[//]: # (RETURN_TYPE_KIND:primitive)

[//]: # (RETURN_TYPE_DOC:)

[//]: # (OPERATION:get_note_text_v2)

[//]: # (ENDPOINT:/filings/notes/{identifier}/text)

[//]: # (DOCUMENT_LINK:FilingApi.md#get_note_text)

# **get_note_text**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/get_note_text_v2)

[//]: # (START_OVERVIEW)

> Character get_note_text(identifier)

#### Filing Note Text



[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
identifier <- "xbn_ydK3QL" # Character | The Intrinio ID of the filing note

response <- FilingApi$get_note_text(identifier)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **Character**| The Intrinio ID of the filing note | 

[//]: # (END_PARAMETERS)

### Return type

**Character**

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:search8k_filings)

[//]: # (RETURN_TYPE:::ApiResponseFiling8ksSummaries)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFiling8ksSummaries.md)

[//]: # (OPERATION:search8k_filings_v2)

[//]: # (ENDPOINT:/filings/8K/search)

[//]: # (DOCUMENT_LINK:FilingApi.md#search8k_filings)

# **search8k_filings**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/search8k_filings_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFiling8ksSummaries search8k_filings(opts)

#### Search 8-K Filings


Returns summaries of 8-K filings matching search criteria

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Optional params
opts <- list(
  query = "problem AND research AND engineering", # Character | Full-text search query. This can include logical operators like AND, OR, NOT and parentheses to indicate order of operations.
  company = "AAPL", # Character | A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  start_date = NULL, # Date | Return 8-K filings filed on or after the given date
  end_date = NULL, # Date | Return 8-K filings filed on or before the given date
  item_code = NULL, # Character | Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the <a href=https://www.sec.gov/fast-answers/answersform8khtm.html target=_blank>SEC website</a>.
  document_type = "8-K", # Character | Return search results found in the given document Specifing type. \"8-K\" will return search results matching the primary content of 8-K and 8-K/A filings. Specifing \"exhibit\" will return search results matching the exhibit content of 8-K filings. Specifing \"all\" will return search results matching both 8-K and exhibit content.
  page_size = 100, # Integer | The number of results to return
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$search8k_filings(opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **Character**| Full-text search query. This can include logical operators like AND, OR, NOT and parentheses to indicate order of operations. | 
 **company** | **Character**| A Company identifier (Ticker, CIK, LEI, Intrinio ID) | 
 **start_date** | **Date**| Return 8-K filings filed on or after the given date | 
 **end_date** | **Date**| Return 8-K filings filed on or before the given date | 
 **item_code** | **Character**| Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the &lt;a href&#x3D;https://www.sec.gov/fast-answers/answersform8khtm.html target&#x3D;_blank&gt;SEC website&lt;/a&gt;. | 
 **document_type** | **Character**| Return search results found in the given document Specifing type. \&quot;8-K\&quot; will return search results matching the primary content of 8-K and 8-K/A filings. Specifing \&quot;exhibit\&quot; will return search results matching the exhibit content of 8-K filings. Specifing \&quot;all\&quot; will return search results matching both 8-K and exhibit content. | [default to 8-K]
 **page_size** | **Integer**| The number of results to return | [default to 100]
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFiling8ksSummaries**](ApiResponseFiling8ksSummaries.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:search8k_filings_bulk)

[//]: # (RETURN_TYPE:::ApiResponseFiling8ks)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFiling8ks.md)

[//]: # (OPERATION:search8k_filings_bulk_v2)

[//]: # (ENDPOINT:/filings/8K/search/bulk)

[//]: # (DOCUMENT_LINK:FilingApi.md#search8k_filings_bulk)

# **search8k_filings_bulk**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/search8k_filings_bulk_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFiling8ks search8k_filings_bulk(opts)

#### Search 8-K Filings (Bulk Response)


Returns full content of 8-K filings matching search criteria. Subject to restricted API call limits depending on plan access.

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Optional params
opts <- list(
  query = "problem AND research AND engineering", # Character | Full-text search query. This can include logical operators like AND, OR, NOT and parentheses to indicate order of operations.
  company = "AAPL", # Character | A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  start_date = NULL, # Date | Return 8-K filings filed on or after the given date
  end_date = NULL, # Date | Return 8-K filings filed on or before the given date
  item_code = NULL, # Character | Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the <a href=https://www.sec.gov/fast-answers/answersform8khtm.html target=_blank>SEC website</a>.
  document_type = "8-K", # Character | Return search results found in the given document Specifing type. \"8-K\" will return search results matching the primary content of 8-K and 8-K/A filings. Specifing \"exhibit\" will return search results matching the exhibit content of 8-K filings. Specifing \"all\" will return search results matching both 8-K and exhibit content.
  page_size = 10, # Integer | The number of results to return.
  next_page = NULL # Character | Gets the next page of data from a previous API call
)

response <- FilingApi$search8k_filings_bulk(opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **Character**| Full-text search query. This can include logical operators like AND, OR, NOT and parentheses to indicate order of operations. | 
 **company** | **Character**| A Company identifier (Ticker, CIK, LEI, Intrinio ID) | 
 **start_date** | **Date**| Return 8-K filings filed on or after the given date | 
 **end_date** | **Date**| Return 8-K filings filed on or before the given date | 
 **item_code** | **Character**| Return 8-K filings with the given SEC item codes. More information about these item codes can be found on the &lt;a href&#x3D;https://www.sec.gov/fast-answers/answersform8khtm.html target&#x3D;_blank&gt;SEC website&lt;/a&gt;. | 
 **document_type** | **Character**| Return search results found in the given document Specifing type. \&quot;8-K\&quot; will return search results matching the primary content of 8-K and 8-K/A filings. Specifing \&quot;exhibit\&quot; will return search results matching the exhibit content of 8-K filings. Specifing \&quot;all\&quot; will return search results matching both 8-K and exhibit content. | [default to 8-K]
 **page_size** | **Integer**| The number of results to return. | [default to 10]
 **next_page** | **Character**| Gets the next page of data from a previous API call | 

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFiling8ks**](ApiResponseFiling8ks.md)

[//]: # (END_OPERATION)


[//]: # (START_OPERATION)

[//]: # (CLASS:IntrinioSDK::FilingApi)

[//]: # (METHOD:search_notes)

[//]: # (RETURN_TYPE:::ApiResponseFilingNotesSearch)

[//]: # (RETURN_TYPE_KIND:object)

[//]: # (RETURN_TYPE_DOC:ApiResponseFilingNotesSearch.md)

[//]: # (OPERATION:search_notes_v2)

[//]: # (ENDPOINT:/filings/notes/search)

[//]: # (DOCUMENT_LINK:FilingApi.md#search_notes)

# **search_notes**

[**View Intrinio API Documentation**](https://docs.intrinio.com/documentation/r/search_notes_v2)

[//]: # (START_OVERVIEW)

> ApiResponseFilingNotesSearch search_notes(query, opts)

#### Search Filing Notes


Searches for Filing Notes using the `query`

[//]: # (END_OVERVIEW)

### Example

[//]: # (START_CODE_EXAMPLE)
```r
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

# Setup API with client
FilingApi <- IntrinioSDK::FilingApi$new(client)

# Required params
query <- "inflation" # Character | Search for notes that contain all or parts of this text

# Optional params
opts <- list(
  filing_start_date = as.Date("2018-07-15"), # Date | Limit search to filings on or after this date
  filing_end_date = as.Date("2018-11-30"), # Date | Limit search to filings on or before this date
  page_size = 100 # Integer | The number of results to return
)

response <- FilingApi$search_notes(query, opts)
print(response)
print(response$content)
```

[//]: # (END_CODE_EXAMPLE)

[//]: # (START_DEFINITION)

### Parameters

[//]: # (START_PARAMETERS)




Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **Character**| Search for notes that contain all or parts of this text | 
 **filing_start_date** | **Date**| Limit search to filings on or after this date | 
 **filing_end_date** | **Date**| Limit search to filings on or before this date | 
 **page_size** | **Integer**| The number of results to return | [default to 100]

[//]: # (END_PARAMETERS)

### Return type

[**ApiResponseFilingNotesSearch**](ApiResponseFilingNotesSearch.md)

[//]: # (END_OPERATION)
