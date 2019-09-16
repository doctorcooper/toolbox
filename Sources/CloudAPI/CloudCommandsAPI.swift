import Foundation

fileprivate struct CloudRunCommandCreate {
    let command: String
    let environmentID: UUID
}

public struct CloudRunCommandAPI {

    public init() {}

    public func run(command: String, env: UUID) throws {
        // find app, and environment to run
        // create cloud command
        // get id from cloud command
        // subscribe websockets to output of command
    }
}
