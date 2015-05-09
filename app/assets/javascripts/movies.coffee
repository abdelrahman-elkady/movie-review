# For file upload styling (transferring data to hidden field)
$(document).ready ->
  $realInputField = $('#hidden-file-upload')

  # drop just the filename in the display field
  $realInputField.change ->
    $('#visible-file-upload-input').val $(@).val().replace(/^.*[\\\/]/, '')

  # trigger the real input field click to bring up the file selection dialog
  $('#visible-file-upload-btn').click ->
    $realInputField.click()
