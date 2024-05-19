/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 The main entry point of the Hello World experience.
 */

import SwiftUI
import WorldAssets

/// The main entry point of the Hello World experience.
@main
struct WorldApp: App {
    
    // The view model.
    @State private var model = ViewModel()

    // The immersion styles for different modules.
    @State private var orbitImmersionStyle: ImmersionStyle = .mixed
    @State private var solarImmersionStyle: ImmersionStyle = .full

    var body: some Scene {

        WindowGroup("Hello World", id: "modules") {

            HStack{

                VStack{

                    Text("Hello")
                    Text("こんにちは")

                }
                AvatarViw()
            }


        }

    }

    init() {
        // Register all the custom components and systems that the app uses.
        RotationComponent.registerComponent()
        RotationSystem.registerSystem()
        TraceComponent.registerComponent()
        TraceSystem.registerSystem()
        SunPositionComponent.registerComponent()
        SunPositionSystem.registerSystem()
    }
}

#Preview {
    WorldApp() as! any View
}
