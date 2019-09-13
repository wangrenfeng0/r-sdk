# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FilingNote Class
#'
#' @field id 
#' @field xbrl_tag 
#' @field content 
#' @field filing 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilingNote <- R6::R6Class(
  'FilingNote',
  public = list(
    `id` = NULL,
    `xbrl_tag` = NULL,
    `content` = NULL,
    `filing` = NULL,
    initialize = function(`id`, `xbrl_tag`, `content`, `filing`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`xbrl_tag`)) {
        stopifnot(is.character(`xbrl_tag`), length(`xbrl_tag`) == 1)
        self$`xbrl_tag` <- `xbrl_tag`
      }
      if (!missing(`content`)) {
        stopifnot(is.character(`content`), length(`content`) == 1)
        self$`content` <- `content`
      }
      if (!missing(`filing`)) {
        stopifnot(R6::is.R6(`filing`))
        self$`filing` <- `filing`
      }
    },
    toJSON = function() {
      FilingNoteObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          FilingNoteObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          FilingNoteObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`xbrl_tag`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`xbrl_tag`) && ((length(self$`xbrl_tag`) == 0) || ((length(self$`xbrl_tag`) != 0 && R6::is.R6(self$`xbrl_tag`[[1]]))))) {
          FilingNoteObject[['xbrl_tag']] <- lapply(self$`xbrl_tag`, function(x) x$toJSON())
        } else {
          FilingNoteObject[['xbrl_tag']] <- jsonlite::toJSON(self$`xbrl_tag`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`content`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`content`) && ((length(self$`content`) == 0) || ((length(self$`content`) != 0 && R6::is.R6(self$`content`[[1]]))))) {
          FilingNoteObject[['content']] <- lapply(self$`content`, function(x) x$toJSON())
        } else {
          FilingNoteObject[['content']] <- jsonlite::toJSON(self$`content`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`filing`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`filing`) && ((length(self$`filing`) == 0) || ((length(self$`filing`) != 0 && R6::is.R6(self$`filing`[[1]]))))) {
          FilingNoteObject[['filing']] <- lapply(self$`filing`, function(x) x$toJSON())
        } else {
          FilingNoteObject[['filing']] <- jsonlite::toJSON(self$`filing`, auto_unbox = TRUE)
        }
      }

      FilingNoteObject
    },
    fromJSON = function(FilingNoteJson) {
      FilingNoteObject <- jsonlite::fromJSON(FilingNoteJson)
      if (!is.null(FilingNoteObject$`id`)) {
        self$`id` <- FilingNoteObject$`id`
      }
      if (!is.null(FilingNoteObject$`xbrl_tag`)) {
        self$`xbrl_tag` <- FilingNoteObject$`xbrl_tag`
      }
      if (!is.null(FilingNoteObject$`content`)) {
        self$`content` <- FilingNoteObject$`content`
      }
      if (!is.null(FilingNoteObject$`filing`)) {
        self$`filing` <- FilingNoteObject$`filing`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(FilingNoteJson) {
      FilingNoteObject <- jsonlite::fromJSON(FilingNoteJson)
      self$`id` <- FilingNoteObject$`id`
      self$`xbrl_tag` <- FilingNoteObject$`xbrl_tag`
      self$`content` <- FilingNoteObject$`content`
      FilingNoteFilingObject <- FilingNoteFiling$new()
      self$`filing` <- FilingNoteFilingObject$fromJSON(jsonlite::toJSON(FilingNoteObject$filing, auto_unbox = TRUE))
    }
  )
)