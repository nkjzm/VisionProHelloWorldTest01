/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 The top level navigation stack for the app.
 */

import SwiftUI
import RealityKit
import WorldAssets

/// The top level navigation stack for the app.
struct AvatarViw2: View {

    var orientation: SIMD3<Double> = SIMD3<Double>(x: 0.0, y: .pi, z: 0.0)
    private let modelDepth: Double = 100

    var body: some View {
        Model3D(named: "Lyrica", bundle: worldAssetsBundle) { model in
            model.resizable()
                .scaledToFit()
                .rotation3DEffect(
                    Rotation3D(
                        eulerAngles: .init(angles: orientation, order: .xyz)
                    )
                )
                .frame(depth: modelDepth)
                .offset(z: -modelDepth / 2 )
                .accessibilitySortPriority(1)
        } placeholder: {
            ProgressView()
                .offset(z: -modelDepth * 0.75)
        }
    }
}

