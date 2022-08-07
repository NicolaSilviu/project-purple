*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    DressesLocators.robot


*** Keywords ***
Go to summer dresses page
    Wait Until Element Is Visible   ${Dresses_hover}
    Mouse Over   ${Dresses_hover}
    Wait Until Element Is Visible   ${SummerDresses_button}
    Click Element   ${SummerDresses_button}
