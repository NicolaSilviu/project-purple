*** Settings ***
Documentation    Tshirts test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/tshirts/Tshirts.robot

Test Teardown    General.Close Browser


*** Test Cases ***