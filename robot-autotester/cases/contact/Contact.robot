*** Settings ***
Documentation    Contact test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/contact/Contact.robot

Test Teardown    General.Stop Test


*** Test Cases ***