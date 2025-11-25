// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let rfc7232: Self = "RFC_7232"
}

extension Target.Dependency {
    static var rfc7232: Self { .target(name: .rfc7232) }
}

let package = Package(
    name: "swift-rfc-7232",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(name: .rfc7232, targets: [.rfc7232]),
    ],
    dependencies: [
        // Add RFC dependencies here as needed
        // .package(url: "https://github.com/swift-web-standards/swift-rfc-1123.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .rfc7232,
            dependencies: [
                // Add target dependencies here
            ]
        ),
        .testTarget(
            name: .rfc7232.tests,
            dependencies: [
                .rfc7232
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String { var tests: Self { self + " Tests" } }