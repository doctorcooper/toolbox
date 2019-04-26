import Vapor

public struct SSHKey: Content {
    public let key: String
    public let name: String
    public let userID: UUID

    public let id: UUID
    public let createdAt: Date
    public let updatedAt: Date
}

public struct SSHKeyApi {
    public let token: Token
    private let access: ResourceAccess<SSHKey>

    public init(with token: Token) {
        self.token = token
        self.access = SSHKey.Access(with: token, baseUrl: gitSSHKeysUrl)
    }

    public func add(name: String, key: String) -> EventLoopFuture<SSHKey> {
        struct Package: Content {
            let name: String
            let key: String
        }
        let package = Package(name: name, key: key)
        return access.create(package)
    }

    public func list() -> EventLoopFuture<[SSHKey]> {
        return access.list()
    }

    public func delete(_ key: SSHKey) -> EventLoopFuture<Void> {
        return access.delete(id: key.id.uuidString)
    }
}