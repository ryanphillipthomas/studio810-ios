import SwiftUI

@main
struct Studio810App: App {
    
    @StateObject private var model = AppModel()
    
    var body: some Scene {
        WindowGroup {
            #if APPCLIP
            ContentView()
                .environmentObject(model)
                .onContinueUserActivity(NSUserActivityTypeBrowsingWeb, perform: handleUserActivity)
            #else
            ContentView()
                .environmentObject(model)
            #endif
        }
    }
    
    #if APPCLIP
    func handleUserActivity(_ userActivity: NSUserActivity) {
        guard let incomingURL = userActivity.webpageURL,
              let components = NSURLComponents(url: incomingURL, resolvingAgainstBaseURL: true) else {
            return
        }
        switch components.path {
        case "/help":
            model.isChatPresented = true
        case "/lights":
            if let queryItems = components.queryItems,
               let lightId = queryItems.first(where: { $0.name == "id" })?.value {
                model.selectedLight = model.findLightById(Int(lightId) ?? 0)
            }
        default:
            break
        }
    }
    #endif
    
}
