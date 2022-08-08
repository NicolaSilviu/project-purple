*** Settings ***
Documentation    Create account test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/create-account/CreateAccount.robot

Test Teardown    General.Close Browser


*** Test Cases ***
CREA-001 Verify Create An Account page components 
    Log    Verify Create An Account page components


CREA-002 Verify Create An Account page allows user to complete data and create account
    [Documentation]    Verify Create An Account page allows user to complete data and create account
    [Tags]  Suite1
    Go to website
    Create account



CREA-003 Verify Create An Account page displays error message when Phone text box is not filled in
    Log    Verify Create An Account page displays error message when Phone text box is not filled in