// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription



let audwavBinary = Target.binaryTarget(name: "libtaudiowaveform", path: "bins/libtaudiowaveform.xcframework.zip")




let package = Package(
    name: "TAudioWaveform",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TAudioWaveform",
            targets: ["TAudioWaveform"  ] 
        ),
     
    ],
    targets: [
        audwavBinary,
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TAudioWaveform" ,
             dependencies: ["libtaudiowaveform"]  // this dependencies *MUST* preset here, othervise you can not all exported class in libtaudiowaveform
        ),
        .testTarget(
            name: "TAudioWaveformTests",
            dependencies: ["TAudioWaveform"]),
    ]
)
