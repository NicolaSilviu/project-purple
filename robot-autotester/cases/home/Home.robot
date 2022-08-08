*** Settings ***
Documentation    Home test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/home/Home.robot

Test Teardown    General.Close Browser


*** Test Cases ***
