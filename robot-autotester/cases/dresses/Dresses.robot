*** Settings ***
Documentation    Dresses test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/dresses/Dresses.robot
Resource    ../../resources/authentication/Authentication.robot
Resource    ../../resources/cart/Cart.robot

Test Setup    General.Go to website
Test Teardown    General.Close Browser


*** Test Cases ***
DRES-001 Place Order
    [Tags]  Functional
    Log    Step 0: Sign in
    Authentication.Sign in
        
    Log    Step 1: Go to summer dresses page 
    Dresses.Go to summer dresses page

    Log    Step 2: Add 2 items from option2 to cart
    General.Go to option details    2
    General.Add item from option to cart    White    M
    General.Add item from option to cart    Yellow    M

    Log    Step 3: Go to summer dresses page 
    Go to summer dresses page

    Log    Step 4: Add 2 items from option3 to cart
    General.Go to option details    3
    General.Add item from option to cart    White    L
    General.Add item from option to cart    Yellow    L

    Log    Step 5: Check cart total
    Cart.Go to cart
    General.Check total price

    Log    Step 6: Place order
    Cart.Go to cart
    General.Finish checkout
