*** Settings ***
Documentation    Dresses test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/dresses/Dresses.robot


*** Test Cases ***
Go to summer dresses 1
    [Tags]  Suite1
    Go to summer dresses page

Add items from option2 to cart
    [Tags]  Suite1
    Go to option2 details
    Add item1 from option2 to cart
    Add item2 from option2 to cart

Go to summer dresses 2
    [Tags]  Suite1
    Go to summer dresses page

Add items from option3 to cart
    [Tags]  Suite1
    Go to option3 details
    Add item1 from option3 to cart
    Add item2 from option3 to cart

Check cart total
    [Tags]  Suite1
    Go to cart
    Check total price

Place order
    [Tags]  Suite1
    Go to cart
    Finish checkout
    Finish TestCase