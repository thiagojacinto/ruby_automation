#language: en

Feature: Repository List

  @happy
  Scenario: Add new repository
    
    Given access home
    When add the repository "ruby_automation" from "thiagojacinto"
    Then "ruby_automation" should appear on the repository list

  Scenario: Adding more than one repository

    Given access home
    When add the repository "ruby_automation" from "thiagojacinto"
    And add the repository "spring-boot" from "spring-projects"
    Then "ruby_automation" should appear on the repository list
    And "spring-boot" should appear on the repository list

  @focus
  Scenario: Clear repository list

    Given access home
    When add the repository "ruby_automation" from "thiagojacinto"
    And clears list
    Then repository list should be empty