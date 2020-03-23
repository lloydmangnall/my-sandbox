Feature: Add eligible employees to the appropriate health plans
  
  Background: Employee is eligible for health benefits
    Given a Person is an active employee at the company
    And they have enrolled in an eligibile benefit plan
  
  Scenario: Add New Employee to Eligible Health Plan
    When an Employee enrolls in an Eligible Health Plan
    Then they are added as a Active Plan Member
    
  Scenario: Add New Dependent to Employees Health Plan
    Given a Person is a Eligible Dependent of the Employee
    When an Employee enrolls one or more Dependent(s) in their Eligible Health Plan
    Then each Dependent is added as an Active Plan Member
    
    
