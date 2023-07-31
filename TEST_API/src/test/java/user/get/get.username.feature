Feature:Get user

  Scenario: Get a user
    Given url "https://petstore.swagger.io" + "/v2/user/" + "Mhidalgo"
    When method get
    Then status 200