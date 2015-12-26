# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', -> 
  # Date
  $('input[type=date]')
    .mask('99-99-9999')
    .datepicker({format: 'dd-mm-yyyy'})

  # Phone
  SPMaskBehavior = (val) ->
    if val.replace(/\D/g, '').length == 11 then '(00)00000-0000' else '(00)0000-00009'

  spOptions = onKeyPress: (val, e, field, options) ->
    field.mask SPMaskBehavior.apply({}, arguments), options

  $('input[role=phone]').mask(SPMaskBehavior, spOptions)
    .attr('pattern', '^\\(\\d{2}\\)\\d{4,5}\\-\\d{4}$')

