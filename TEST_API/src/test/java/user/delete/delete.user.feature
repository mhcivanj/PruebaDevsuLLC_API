Feature:Delete user

  Scenario: delete a user
    * call read("../post/post.createuser.feature@Create")
    Given url "https://petstore.swagger.io" + "/v2/user/" + "Mhidalgo"
    When method delete
    Then status 200