*** Settings ***
Documentation    Cart test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/cart/Cart.robot

Test Teardown    General.Close Browser


*** Test Cases ***