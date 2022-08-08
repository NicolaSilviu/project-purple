*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    ./AuthenticationLocators.robot


*** Keywords ***
Sign in
    Click Element   ${SignInButton}
    Wait Until Page Contains Element   ${EmailAddressSignInForm}
    Press Keys   ${EmailAddressSignInForm}   ${EmailAddress}
    Press Keys   ${PasswordSignInForm}   ${Password}
    Click Element   ${SubmitSignInButton}