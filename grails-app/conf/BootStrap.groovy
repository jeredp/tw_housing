import org.tw_housing.Address
import org.tw_housing.SecRole
import org.tw_housing.SecUser
import org.tw_housing.SecUserSecRole
import org.tw_housing.User

class BootStrap {
    def springSecurityService

    private SecRole userRole
    private SecRole adminRole

    def init = { servletContext ->

        userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

        createAdmin()

        def user1 = createUser('Jered', 'jered')
        def user2 = createUser('Anastasia', 'anastasia')
        def user3 = createUser('Amanda', 'amanda')
        def user4 = createUser('Joel', 'joel')

        createAddress(user1, 'poo street', 'hell')
        createAddress(user2, 'joo street', 'heaven')
        createAddress(user2, 'blah ave', 'somewhere')
        createAddress(user3, 'blah blvd.', 'somewhere other than that')
        createAddress(user3, 'hard street', 'somewhere')
        createAddress(user4, 'soft street', 'somewhere')
        createAddress(user4, 'blah street', 'somewhere else')
    }

    def createAddress(SecUser user, String address, String city) {
        new Address(
                city: city,
                state: 'IL',
                address: address,
                user: user,
                startDate: new Date(System.currentTimeMillis()),
                finishDate: new Date(System.currentTimeMillis() + 123)
        ).save(failOnError: true)
    }

    private void createAdmin() {
        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)
        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }
    }

    private SecUser createUser(String name, String username) {
        def testUser = SecUser.findByUsername(username) ?: new User(
                name: name,
                username: username,
                password: '1234',
                enabled: true).save(failOnError: true)

        SecUserSecRole.create testUser, userRole

        testUser
    }

    def destroy = {
    }
}
