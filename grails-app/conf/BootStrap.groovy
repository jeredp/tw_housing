import org.tw_housing.SecRole
import org.tw_housing.SecUser
import org.tw_housing.SecUserSecRole
import org.tw_housing.User

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        def testUser = User.findByUsername('test') ?: new User(
                name: 'jered',
                username: 'test',
                password: '1234',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }

        if (!testUser.authorities.contains(userRole)) {
            SecUserSecRole.create testUser, userRole
        }
    }
    def destroy = {
    }
}
