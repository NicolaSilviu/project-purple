*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    CartLocators.robot




*** Keywords ***
Go to cart
    General.Click On Element   ${Cart_button}
    