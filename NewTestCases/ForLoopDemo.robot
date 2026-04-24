*** Test Cases ***
#FORLOOP1
#      FOR   ${i}    IN RANGE   1   10
#      log to console  ${i}
#      END

#FORLOOP2
#        FOR     ${i}    IN      1 2 3 4 5 6 7 8
#        log to console      ${i}
#        END

#FORLOOP3
#        @{items}    create list         1   2   3   4   5
#        FOR     ${i}    IN      @{items}
#        log to console      ${i}
#        END

#FORLOOP4
#        FOR     ${i}        IN      KAIF    SHAMSHAD    AHMAD   AMAN
#        log to console      ${i}
#        END

FORLOOP5
        @{NamesList}    Create list     KAIF    SHAMSHAD    AHMAD   AMAN
        FOR     ${i}        IN      @{NamesList}
        log to console      ${i}
        END