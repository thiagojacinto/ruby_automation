#language: en

Feature: Repository List

  @happy
  Scenario: Add new repository
    
    Given access home
    When add the repository "ruby_automation" from "thiagojacinto"
    Then "ruby_automation" should appear on the repository list