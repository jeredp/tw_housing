package org.tw_housing

class UserController {

    static defaultAction = "list"
    def Scaffold = User

    def list() {
        [userList: User.list(), addressList: Address.list()]
    }

    def create() {
        User.newInstance()
    }

    def save() {
        def user = new User(name: params.name)
        if(user.save()) {
            redirect(controller: "user", action: "list")
        } else {
            render "ooops"
        }
    }
}
