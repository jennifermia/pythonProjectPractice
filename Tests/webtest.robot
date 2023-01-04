*** Settings ***
Documentation  Some basic infomation about the whoke test suite
Library  SeleniumLibrary
#Test Setup  Begin Web Test
#Test Teardown   End Web Test




*** Test Cases ***
User Can Access Website And Search For A Product
      [Documentation]    This is some basic information about the test
      [Tags]   Test 1

      Open Browser  about:blankd  chrome
      Go To    https://mediamarkt.se
      Wait Until Page Contains   Om MediaMarkt
      Input Text      //*[@id="search-autocomplete"]/form/input[1]    The Sims
      Press Keys   //*[@id="search-autocomplete"]/form/input[1]   RETURN
      Wait Until Page Contains   The Sims
      Press Keys    //*[@id="category"]/ul[2]/li[2]/div/aside[2]/div[2]/a[2]   RETURN
      Wait Until Page Contains   The Sims 4 Xbox One
      Press Keys    //*[@id="pdp-add-to-cart"]     RETURN
      Close Browser





