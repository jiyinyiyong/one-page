
define (require, exports) ->
  en = require 'src/locales/en'
  zh = require 'src/locales/zh'
  exports.get = (key) ->
    if window.OnePage.lang is 'zh'
      zh[key]
    else
      en[key]

  exports