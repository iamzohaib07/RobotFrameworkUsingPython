*** Test Cases ***
#ForLoop1
#    FOR   ${i}    IN RANGE   1   10
#    log to console  ${i}
#    END

#ForLoop2
#    FOR   ${i}    IN RANGE   10
#    log to console  ${i}
#    END


#ForLoop3
#    @{items}    create list     one   two   three   four
#    FOR    ${i}    IN     @{items}
#    log to console     ${i}
#    END

#ForLoop4
#    FOR    ${i}    IN     one  two  three  four
#    log to console     ${i}
#    END