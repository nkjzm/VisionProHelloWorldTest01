/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The top level navigation stack for the app.
*/

import SwiftUI
import RealityKit
import WorldAssets

/// The top level navigation stack for the app.
struct AvatarViw: View {

    var body: some View {
        Text("ここから")
//         Model3D(named: item.name, bundle: worldAssetsBundle) { model in

        Model3D(named: "Lyrica", bundle: worldAssetsBundle)
            .padding(.bottom, 50)
        Text("ここまで")
    }
}

#Preview {
    Modules()
        .environment(ViewModel())
}
