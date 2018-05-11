// swift-tools-version:4.0
// Managed by ice

import PackageDescription

let package = Package(
    name: "AWSOrganizations",
    products: [
        .library(name: "AWSOrganizations", targets: ["AWSOrganizations"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "4.7.2"),
    ],
    targets: [
        .target(name: "AWSOrganizations", dependencies: ["Alamofire"]),
        .testTarget(name: "AWSOrganizationsTests", dependencies: ["AWSOrganizations"]),
    ]
)
