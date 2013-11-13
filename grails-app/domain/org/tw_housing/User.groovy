package org.tw_housing

class User extends SecUser{

    String name
    static hasMany = [addresses: Address]

    static constraints = {
        name(blank: false)
    }
}
