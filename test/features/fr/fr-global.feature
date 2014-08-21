Feature: Global
    Test French global form
    at /marketo/form/french-global

    Scenario: Test French global form
        Given I visit "/marketo/form/french-global"
          And the parameter "utm_source" is "partner_abc"
          And the parameter "utm_medium" is "email"
          And the parameter "utm_campaign" is "FR_TEST_456"
          And the page loads
         When I fill out form "96"
          And I fill field "#FirstName" as "Test"
          And I fill field "#LastName" as "Test_" with timestamp
          And I fill field "#Email" as "test@sugarcrm.com" with timestamp
          And I fill field "#Title" as "VP of Testing"
          And I fill field "#Company" as "SugarCRM"
          And I fill field "#Phone" as "555-555-5555"
          And I select field "#num_of_employees" as "level3"
          And I select field "#Industry" as "Engineering"
          And I click submit
         Then I'm taken to "/marketo/thanks"