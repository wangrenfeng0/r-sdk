# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' StockPrice Class
#'
#' @field date 
#' @field intraperiod 
#' @field frequency 
#' @field open 
#' @field high 
#' @field low 
#' @field close 
#' @field volume 
#' @field adj_open 
#' @field adj_high 
#' @field adj_low 
#' @field adj_close 
#' @field adj_volume 
#' @field security 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockPrice <- R6::R6Class(
  'StockPrice',
  public = list(
    `date` = NULL,
    `intraperiod` = NULL,
    `frequency` = NULL,
    `open` = NULL,
    `high` = NULL,
    `low` = NULL,
    `close` = NULL,
    `volume` = NULL,
    `adj_open` = NULL,
    `adj_high` = NULL,
    `adj_low` = NULL,
    `adj_close` = NULL,
    `adj_volume` = NULL,
    `security` = NULL,
    initialize = function(`date`, `intraperiod`, `frequency`, `open`, `high`, `low`, `close`, `volume`, `adj_open`, `adj_high`, `adj_low`, `adj_close`, `adj_volume`, `security`){
      if (!missing(`date`)) {
        stopifnot(is.character(`date`), length(`date`) == 1)
        stopifnot(R6::is.R6(`date`))
        self$`date` <- `date`
      }
      if (!missing(`intraperiod`)) {
        stopifnot(R6::is.R6(`intraperiod`))
        self$`intraperiod` <- `intraperiod`
      }
      if (!missing(`frequency`)) {
        stopifnot(is.character(`frequency`), length(`frequency`) == 1)
        self$`frequency` <- `frequency`
      }
      if (!missing(`open`)) {
        self$`open` <- `open`
      }
      if (!missing(`high`)) {
        self$`high` <- `high`
      }
      if (!missing(`low`)) {
        self$`low` <- `low`
      }
      if (!missing(`close`)) {
        self$`close` <- `close`
      }
      if (!missing(`volume`)) {
        self$`volume` <- `volume`
      }
      if (!missing(`adj_open`)) {
        self$`adj_open` <- `adj_open`
      }
      if (!missing(`adj_high`)) {
        self$`adj_high` <- `adj_high`
      }
      if (!missing(`adj_low`)) {
        self$`adj_low` <- `adj_low`
      }
      if (!missing(`adj_close`)) {
        self$`adj_close` <- `adj_close`
      }
      if (!missing(`adj_volume`)) {
        self$`adj_volume` <- `adj_volume`
      }
      if (!missing(`security`)) {
        stopifnot(R6::is.R6(`security`))
        self$`security` <- `security`
      }
    },
    toJSON = function() {
      StockPriceObject <- list()
      if (!is.null(self$`date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`date`) && ((length(self$`date`) == 0) || ((length(self$`date`) != 0 && R6::is.R6(self$`date`[[1]]))))) {
          StockPriceObject[['date']] <- lapply(self$`date`, function(x) x$toJSON())
        } else {
          StockPriceObject[['date']] <- jsonlite::toJSON(self$`date`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`intraperiod`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`intraperiod`) && ((length(self$`intraperiod`) == 0) || ((length(self$`intraperiod`) != 0 && R6::is.R6(self$`intraperiod`[[1]]))))) {
          StockPriceObject[['intraperiod']] <- lapply(self$`intraperiod`, function(x) x$toJSON())
        } else {
          StockPriceObject[['intraperiod']] <- jsonlite::toJSON(self$`intraperiod`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`frequency`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`frequency`) && ((length(self$`frequency`) == 0) || ((length(self$`frequency`) != 0 && R6::is.R6(self$`frequency`[[1]]))))) {
          StockPriceObject[['frequency']] <- lapply(self$`frequency`, function(x) x$toJSON())
        } else {
          StockPriceObject[['frequency']] <- jsonlite::toJSON(self$`frequency`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`open`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`open`) && ((length(self$`open`) == 0) || ((length(self$`open`) != 0 && R6::is.R6(self$`open`[[1]]))))) {
          StockPriceObject[['open']] <- lapply(self$`open`, function(x) x$toJSON())
        } else {
          StockPriceObject[['open']] <- jsonlite::toJSON(self$`open`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`high`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`high`) && ((length(self$`high`) == 0) || ((length(self$`high`) != 0 && R6::is.R6(self$`high`[[1]]))))) {
          StockPriceObject[['high']] <- lapply(self$`high`, function(x) x$toJSON())
        } else {
          StockPriceObject[['high']] <- jsonlite::toJSON(self$`high`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`low`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`low`) && ((length(self$`low`) == 0) || ((length(self$`low`) != 0 && R6::is.R6(self$`low`[[1]]))))) {
          StockPriceObject[['low']] <- lapply(self$`low`, function(x) x$toJSON())
        } else {
          StockPriceObject[['low']] <- jsonlite::toJSON(self$`low`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`close`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`close`) && ((length(self$`close`) == 0) || ((length(self$`close`) != 0 && R6::is.R6(self$`close`[[1]]))))) {
          StockPriceObject[['close']] <- lapply(self$`close`, function(x) x$toJSON())
        } else {
          StockPriceObject[['close']] <- jsonlite::toJSON(self$`close`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume`) && ((length(self$`volume`) == 0) || ((length(self$`volume`) != 0 && R6::is.R6(self$`volume`[[1]]))))) {
          StockPriceObject[['volume']] <- lapply(self$`volume`, function(x) x$toJSON())
        } else {
          StockPriceObject[['volume']] <- jsonlite::toJSON(self$`volume`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`adj_open`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`adj_open`) && ((length(self$`adj_open`) == 0) || ((length(self$`adj_open`) != 0 && R6::is.R6(self$`adj_open`[[1]]))))) {
          StockPriceObject[['adj_open']] <- lapply(self$`adj_open`, function(x) x$toJSON())
        } else {
          StockPriceObject[['adj_open']] <- jsonlite::toJSON(self$`adj_open`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`adj_high`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`adj_high`) && ((length(self$`adj_high`) == 0) || ((length(self$`adj_high`) != 0 && R6::is.R6(self$`adj_high`[[1]]))))) {
          StockPriceObject[['adj_high']] <- lapply(self$`adj_high`, function(x) x$toJSON())
        } else {
          StockPriceObject[['adj_high']] <- jsonlite::toJSON(self$`adj_high`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`adj_low`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`adj_low`) && ((length(self$`adj_low`) == 0) || ((length(self$`adj_low`) != 0 && R6::is.R6(self$`adj_low`[[1]]))))) {
          StockPriceObject[['adj_low']] <- lapply(self$`adj_low`, function(x) x$toJSON())
        } else {
          StockPriceObject[['adj_low']] <- jsonlite::toJSON(self$`adj_low`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`adj_close`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`adj_close`) && ((length(self$`adj_close`) == 0) || ((length(self$`adj_close`) != 0 && R6::is.R6(self$`adj_close`[[1]]))))) {
          StockPriceObject[['adj_close']] <- lapply(self$`adj_close`, function(x) x$toJSON())
        } else {
          StockPriceObject[['adj_close']] <- jsonlite::toJSON(self$`adj_close`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`adj_volume`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`adj_volume`) && ((length(self$`adj_volume`) == 0) || ((length(self$`adj_volume`) != 0 && R6::is.R6(self$`adj_volume`[[1]]))))) {
          StockPriceObject[['adj_volume']] <- lapply(self$`adj_volume`, function(x) x$toJSON())
        } else {
          StockPriceObject[['adj_volume']] <- jsonlite::toJSON(self$`adj_volume`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          StockPriceObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          StockPriceObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }

      StockPriceObject
    },
    fromJSON = function(StockPriceJson) {
      StockPriceObject <- jsonlite::fromJSON(StockPriceJson)
      if (!is.null(StockPriceObject$`date`)) {
        self$`date` <- StockPriceObject$`date`
      }
      if (!is.null(StockPriceObject$`intraperiod`)) {
        self$`intraperiod` <- StockPriceObject$`intraperiod`
      }
      if (!is.null(StockPriceObject$`frequency`)) {
        self$`frequency` <- StockPriceObject$`frequency`
      }
      if (!is.null(StockPriceObject$`open`)) {
        self$`open` <- StockPriceObject$`open`
      }
      if (!is.null(StockPriceObject$`high`)) {
        self$`high` <- StockPriceObject$`high`
      }
      if (!is.null(StockPriceObject$`low`)) {
        self$`low` <- StockPriceObject$`low`
      }
      if (!is.null(StockPriceObject$`close`)) {
        self$`close` <- StockPriceObject$`close`
      }
      if (!is.null(StockPriceObject$`volume`)) {
        self$`volume` <- StockPriceObject$`volume`
      }
      if (!is.null(StockPriceObject$`adj_open`)) {
        self$`adj_open` <- StockPriceObject$`adj_open`
      }
      if (!is.null(StockPriceObject$`adj_high`)) {
        self$`adj_high` <- StockPriceObject$`adj_high`
      }
      if (!is.null(StockPriceObject$`adj_low`)) {
        self$`adj_low` <- StockPriceObject$`adj_low`
      }
      if (!is.null(StockPriceObject$`adj_close`)) {
        self$`adj_close` <- StockPriceObject$`adj_close`
      }
      if (!is.null(StockPriceObject$`adj_volume`)) {
        self$`adj_volume` <- StockPriceObject$`adj_volume`
      }
      if (!is.null(StockPriceObject$`security`)) {
        self$`security` <- StockPriceObject$`security`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(StockPriceJson) {
      StockPriceObject <- jsonlite::fromJSON(StockPriceJson)
      DateObject <- Date$new()
      self$`date` <- DateObject$fromJSON(jsonlite::toJSON(StockPriceObject$date, auto_unbox = TRUE))
      LogicalObject <- Logical$new()
      self$`intraperiod` <- LogicalObject$fromJSON(jsonlite::toJSON(StockPriceObject$intraperiod, auto_unbox = TRUE))
      self$`frequency` <- StockPriceObject$`frequency`
      self$`open` <- StockPriceObject$`open`
      self$`high` <- StockPriceObject$`high`
      self$`low` <- StockPriceObject$`low`
      self$`close` <- StockPriceObject$`close`
      self$`volume` <- StockPriceObject$`volume`
      self$`adj_open` <- StockPriceObject$`adj_open`
      self$`adj_high` <- StockPriceObject$`adj_high`
      self$`adj_low` <- StockPriceObject$`adj_low`
      self$`adj_close` <- StockPriceObject$`adj_close`
      self$`adj_volume` <- StockPriceObject$`adj_volume`
      SecuritySummaryObject <- SecuritySummary$new()
      self$`security` <- SecuritySummaryObject$fromJSON(jsonlite::toJSON(StockPriceObject$security, auto_unbox = TRUE))
    }
  )
)