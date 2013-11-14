package org.tw_housing

class Address {

    static belongsTo = [user: SecUser]
    String state
    String city
    String address
    Date startDate
    Date finishDate

    static constraints = {
        state(size: new IntRange(2,2))
        city(blank: false)
        address(blank: false)
    }
}
