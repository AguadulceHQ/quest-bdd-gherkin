Feature: Journaling

  Background:
    Given a user named "0xlyd"
    And that I am logged in as 0xlyd
    And a journal entry with the text "Excited to start building LifeOS" owned by "0xlyd"

  Scenario: add a new entry
    When I want to write a journal entry
    Then I can type a brief message
    Then I can add one or more tags
    And save the journal entry
    And the system should automatically add a date
    * a time
    * a location

  Scenario: edit an entry
    And that I have at least one journal entry
    When I want to edit a journal entry
    Then I can open the journal entry I want to edit
    And I can update the message
    And I can update tags
    And save the journal entry
    And the system should automatically update the date
    * the time

  Scenario: view all entries
    And that I have at least one journal entry
    When I want to see all the entries I wrote
    Then I can see all entries titles in one view
    And ordered by most recent first
    And I can access the details of one entry if needed by clicking on it
  
  Scenario: view single entry
    And that I have at least one journal entry
    When I want to see one specific entry
    Then I can click its preview
    And see the message
    * the date
    * the time
    * the location
    * all tags if any

  Scenario: stats streak
    When I want to check my journaling progress
    Then I can access the stats view where I can see the number of consecutive days with entries (current streak)
    And the longest streak
    And the current week schedule with a check if an entry was filled for that day or not
