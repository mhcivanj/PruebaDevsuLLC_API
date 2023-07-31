Feature: create a one user
@Create
  Scenario: Post create User

    Given url "https://petstore.swagger.io/v2/user"
    And request { "id": 0, "username": "Mhidalgo", "firstName": "Marcos", "lastName": "Hidalgo", "email": "mhida@gmail.com", "password": "123", "phone": "8888-888", "userStatus": 0 }
    When method post
    Then status 200
    And def usernameId = $.username