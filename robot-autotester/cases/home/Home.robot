*** Settings ***
Documentation    Home test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/home/Home.robot

Test Teardown    General.Stop Test


*** Test Cases ***
