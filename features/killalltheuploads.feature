Feature: Delete S3 Multipart Uploads
  In order to abort all pending S3 multipart uploads from a bucket
  I want a one-command way to kill them all
  So I don't have to do it myself

  Scenario: Basic UI
    When I get help for "killalltheuploads"
    Then the exit status should be 0
    And the banner should be present
    And there should be a one line summary of what the app does
    And the banner should include the version
    And the banner should document that this app takes options
    And the banner should document that this app's arguments are:
      |access_key_id|which is required|
      |secret_access_key|which is required|
      |bucket_name|which is required|
