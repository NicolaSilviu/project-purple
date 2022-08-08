*** Settings ***
Documentation    Women test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/women/Women.robot

Test Teardown    General.Close Browser


*** Test Cases ***