import AsyncAlgorithms
import Vapor
import VaporElementary

func addRoutes(to app: Application) {
    app.get("") { _ in
        HTMLResponse {
            MainPage()
        }
    }

    app.get("time") { _ -> Response in
        Response(
            status: .ok,
            headers: ["Content-Type": "text/event-stream"],
            body: .init(managedAsyncStream: { writer in
                while true {
                    try await writer.writeBuffer(.init(string: "event: time\ndata: Server Time: \(Date())\n\n"))
                    try await Task.sleep(for: .seconds(1))
                }
            })
        )
    }
}
