Feature: Add Project
  As a designer
  In order to manage my projects efficiently
  I want to be able to add projects to the app

  Scenario: Add a New Project (Happy path)
    Given I'm on the "projects" page
    And I click "Add Project"
    When I fill in "Title" with "Sample Project"
    And I fill in "Description" with "This will be an amazing project"
    And I click "Save Project"
    Then I should see a notification that the project was created successfully.
    And I should see "Sample Project"
    And I should see "This will be an amazing project"

  Scenario: Add a Project and a project with the same title exists (Sad path)
    Given I have the following projects:
      | title         |
      | todo app      |
    When I add a project with a title of "todo app"
    Then I should see "todo app already exists!"
    And I should not see "todo app"
