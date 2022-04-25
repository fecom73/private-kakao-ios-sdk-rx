// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2
import PackageDescription

let version = "2.9.2"

var checksums: [String:String] = [:]
checksums["RxSwift"] = "80e617f0d24dfb325be9b26dc749d374a7c487f8e375331db613737456f13b57"
checksums["RxCocoa"] = "81850ad1cc4fa688720a82f1d72dce2237c33d79cfe9ffe394aff0df2188865f"
checksums["RxAlamofire"] = "5e021d5d54cee4d15e3f4b1813884b4986ef143ce223f982fe337c0a23a9e74c"
checksums["RxKakaoSDKCommon"] = "5869246c7a0e16a0270bb7214cb66f689a19a414091855104476d231a394f0e1"
checksums["RxKakaoSDKAuth"] = "ea66704eda13394a424b4ef960742126224d173588c03c5fd1002a2dcf03b482"
checksums["RxKakaoSDKUser"] = "2589c1605db1be060411183bc4990617d3c471c65cd132f7d06205ca4bbc7b37"
checksums["RxKakaoSDKTalk"] = "91dab6764c61835db57bd968c091dca41e9820f768880269f9836f6e3c3dac0a"
checksums["RxKakaoSDKStory"] = "8546dbbe75f4ce5c8d292bcda9a8e443a50f08af57c0a12ec7b8adc351227c06"
checksums["RxKakaoSDKLink"] = "158139aa3d75302b0459c4fe95456ff16a12c2ca43b5e33a00f5976e53a2fa46"

let url = "https://github.com/fecom73/private-kakao-ios-sdk-rx/releases/download/\(version)"

let package = Package(
    name: "RxKakaoOpenSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "RxCocoa",
            targets: ["RxCocoa"]),
        .library(
            name: "RxSwift",
            targets: ["RxSwift"]),
        .library(
            name: "RxAlamofire",
            targets: ["RxAlamofire"]),
        .library(
            name: "RxKakaoSDKCommon",
            targets: ["RxKakaoSDKCommon"]),
        .library(
            name: "RxKakaoSDKAuth",
            targets: ["RxKakaoSDKAuth"]),
        .library(
            name: "RxKakaoSDKUser",
            targets: ["RxKakaoSDKUser"]),
        .library(
            name: "RxKakaoSDKTalk",
            targets: ["RxKakaoSDKTalk"]),
        .library(
            name: "RxKakaoSDKStory",
            targets: ["RxKakaoSDKStory"]),
        .library(
            name: "RxKakaoSDKLink",
            targets: ["RxKakaoSDKLink"])
    ],
//    dependencies: [
//        .package(name: "KakaoOpenSDK",
//                 url: "https://github.daumkakao.com/kops/private-kakao-ios-sdk.git",
//                 .exact(version)
//                ),
//
//        .package(name: "RxAlamofire",
//                  url: "https://github.com/RxSwiftCommunity/RxAlamofire.git",
//                  Version(6,0,0)..<Version(7,0,0)),
//
//        .package(name: "RxSwift",
//                  url: "https://github.com/ReactiveX/RxSwift.git",
//                  Version(6,0,0)..<Version(7,0,0))
//    ],
    targets: [
        .binaryTarget(name: "RxCocoa",
                      url:"\(url)/RxCocoa_xcframework.zip",
                      checksum:checksums["RxCocoa"]!
        ),
        .binaryTarget(name: "RxSwift",
                      url:"\(url)/RxSwift_xcframework.zip",
                      checksum:checksums["RxSwift"]!
        ),
        .binaryTarget(name: "RxAlamofire",
                      url:"\(url)/RxAlamofire_xcframework.zip",
                      checksum:checksums["RxAlamofire"]!
        ),
        .binaryTarget(name: "RxKakaoSDKCommon",
                      url:"\(url)/RxKakaoSDKCommon_xcframework.zip",
                      checksum:checksums["RxKakaoSDKCommon"]!
        ),
        .binaryTarget(name: "RxKakaoSDKAuth",
                      url:"\(url)/RxKakaoSDKAuth_xcframework.zip",
                      checksum:checksums["RxKakaoSDKAuth"]!
        ),
        .binaryTarget(name: "RxKakaoSDKUser",
                      url:"\(url)/RxKakaoSDKUser_xcframework.zip",
                      checksum:checksums["RxKakaoSDKUser"]!
        ),
        .binaryTarget(name: "RxKakaoSDKTalk",
                      url:"\(url)/RxKakaoSDKTalk_xcframework.zip",
                      checksum:checksums["RxKakaoSDKTalk"]!
        ),
        .binaryTarget(name: "RxKakaoSDKStory",
                      url:"\(url)/RxKakaoSDKStory_xcframework.zip",
                      checksum:checksums["RxKakaoSDKStory"]!
        ),
        .binaryTarget(name: "RxKakaoSDKLink",
                      url:"\(url)/RxKakaoSDKLink_xcframework.zip",
                      checksum:checksums["RxKakaoSDKLink"]!
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
