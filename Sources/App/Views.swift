import Elementary
import ElementaryHTMX
import ElementaryHTMXSSE
import Foundation

struct MainPage: HTMLDocument {
    var title: String { "Vapor + Elementary" }

    var head: some HTML {
        meta(.charset(.utf8))
        script(.src("/htmx.min.js")) {}
        script(.src("/htmxsse.min.js")) {}
        script(.src("https://cdn.tailwindcss.com")) {}
    }

    var body: some HTML {
        header {

            div(.class("flex flex-col min-h-screen items-center font-mono bg-black")) {

            }
        }
        main {
            div(.class("flex flex-col min-h-screen items-center font-mono bg-black")) {
                div(.class("bg-zinc-50 m-12 p-12 rounded-lg shadow-md gap-4")) {
                    h1(.class("text-3xl pb-6 mx-auto")) { title }

                }
            }
        }
    }
}
