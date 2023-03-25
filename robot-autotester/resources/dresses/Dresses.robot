*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    DressesLocators.robot


*** Keywords ***
Go to summer dresses page
    General.Hover On Element    ${Dresses_hover}
    General.Click On Element    ${SummerDresses_button}
