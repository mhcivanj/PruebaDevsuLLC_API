Feature: Put a one user

  Scenario: Put User

    Given url "https://petstore.swagger.io/v2/user/Mhidalgo"
    And request { "id": 0, "firstName": "ivan", "email": "123@hotmail.com" }
    When method put
    Then status 200
    And math $.message == "0"