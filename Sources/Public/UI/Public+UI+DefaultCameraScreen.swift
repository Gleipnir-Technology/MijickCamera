//
//  Public+UI+DefaultCameraScreen.swift of MijickCamera
//
//  Created by Tomasz Kurylik. Sending ❤️ from Kraków!
//    - Mail: tomasz.kurylik@mijick.com
//    - GitHub: https://github.com/FulcrumOne
//    - Medium: https://medium.com/@mijick
//
//  Copyright ©2024 Mijick. All rights reserved.

import SwiftUI

// MARK: Initializer
extension DefaultCameraScreen {
    public init(
        cameraManager: CameraManager, namespace: Namespace.ID,
        closeMCameraAction: @escaping () -> Void
    ) {
        self.init(
            cameraManager: cameraManager, namespace: namespace,
            closeMCameraAction: closeMCameraAction, config: .init())
    }
}

// MARK: Methods
extension DefaultCameraScreen {
    public func captureButtonAllowed(_ value: Bool) -> Self {
        config.captureButtonAllowed = value
        return self
    }
    public func cameraOutputSwitchAllowed(_ value: Bool) -> Self {
        config.cameraOutputSwitchAllowed = value
        return self
    }
    public func cameraPositionButtonAllowed(_ value: Bool) -> Self {
        config.cameraPositionButtonAllowed = value
        return self
    }
    public func flashButtonAllowed(_ value: Bool) -> Self {
        config.flashButtonAllowed = value
        return self
    }
    public func lightButtonAllowed(_ value: Bool) -> Self {
        config.lightButtonAllowed = value
        return self
    }
    public func flipButtonAllowed(_ value: Bool) -> Self {
        config.flipButtonAllowed = value
        return self
    }
    public func gridButtonAllowed(_ value: Bool) -> Self {
        config.gridButtonAllowed = value
        return self
    }
    public func closeButtonAllowed(_ value: Bool) -> Self {
        config.closeButtonAllowed = value
        return self
    }
}

public func DefaultCameraScreenBuilder(
    hasCaptureButton: Bool = true, hasCameraOutputSwitch: Bool = true,
    hasCameraPositionButton: Bool = true, hasFlashButton: Bool = true,
    hasLightButton: Bool = true, hasFlipButton: Bool = true,
    hasGridButton: Bool = true, hasCloseButton: Bool = true
) -> CameraScreenBuilder {
    return { cameraManager, namespace, closeMCameraAction in
        let config = DefaultCameraScreen.Config()
        config.captureButtonAllowed = hasCaptureButton
        config.cameraOutputSwitchAllowed = hasCameraOutputSwitch
        config.cameraPositionButtonAllowed = hasCameraPositionButton
        config.flashButtonAllowed = hasFlashButton
        config.flashButtonAllowed = hasFlashButton
        config.flipButtonAllowed = hasFlipButton
        config.gridButtonAllowed = hasGridButton
        config.closeButtonAllowed = hasCloseButton
        config.lightButtonAllowed = hasLightButton
        return DefaultCameraScreen.init(
            cameraManager: cameraManager, namespace: namespace,
            closeMCameraAction: closeMCameraAction, config: config)
    }
}
