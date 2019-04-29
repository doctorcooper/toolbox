import Vapor
import CloudAPI
import Globals

//extension Option where Value == String {
//    static var email: Option<String> { return .init(name: "email", short: "e", type: .value, help: "the email to use.") }
//    static var password: Option<String> { return .init(name: "password", short: "p", type: .value, help: "the password to use.") }
//}

extension Command {
    public typealias Context = CommandContext<Self>
}

struct CloudLogin: Command {
    struct Signature: CommandSignature {
        let email: Option = .email
        let password: Option = .password
    }
    
    /// See `Command`.
    let signature = Signature()

    let help: String? = "logs into vapor cloud."

    /// See `Command`.
    func run(using ctx: Context) throws {
        let e = ctx.load(.email)
        let p = ctx.load(.password, secure: true)
        let token = try UserApi().login(email: e, password: p)
        try token.save()
        ctx.console.output("cloud is ready.".consoleText(.info))

//        let token = UserApi(on: ctx.container).login(email: e, password: p)
//        return token.map { token in
//            try token.save()
//            ctx.console.output("Cloud is Ready".consoleText(.info))
//        }
    }
}

