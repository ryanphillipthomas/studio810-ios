import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var model: AppModel
    @State var selectedLight: Light?
    @State private var showingSheet = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HomeView(lights: $model.lights, selectedLight: $model.selectedLight)
                .zIndex(0)
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    self.showingSheet = model.selectedLight != nil
                })
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
        }
    }
}
