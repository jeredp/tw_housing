package org.tw_housing

class User {

    String name
    static hasMany = [addresses: Address]

    static constraints = {
        name(blank: false)
    }
}
