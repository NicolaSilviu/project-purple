*** Settings ***
Documentation    Authentication test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/authentication/Authentication.robot

Test Teardown    General.Close Browser


*** Test Cases ***
AUTH-001 Sign in
    [Documentation]  This test signs in the user
    [Tags]  Suite1
    Go to website
    Sign in