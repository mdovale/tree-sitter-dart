// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterDart",
    products: [
        .library(name: "TreeSitterDart", targets: ["TreeSitterDart"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterDart",
            dependencies: [],
            path: ".",
            exclude: [
                "binding.gyp",
                "bindings/c",
                "bindings/go",
                "bindings/node",
                "bindings/python",
                "bindings/rust",
                "bindings/swift/TreeSitterDartTests",
                "Cargo.toml",
                "Cargo.lock",
                "Dart.g",
                "Makefile",
                "grammar.js",
                "LICENSE",
                "README.md",
                "assets",
                "go.mod",
                "package.json",
                "pubspec.yaml",
                "pyproject.toml",
                "setup.py",
                "src/grammar.json",
                "src/node-types.json",
                "test",
                "tester",
                "test_all.sh",
                "testitem.html",
                "tree_sitter",
                "tree-sitter-dart.wasm",
                "tree-sitter.json",
                ".editorconfig",
                ".gitattributes",
                ".github",
                ".gitignore",
                ".gitmodules",
            ],
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries"),
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")],
        ),
        .testTarget(
            name: "TreeSitterDartTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterDart",
            ],
            path: "bindings/swift/TreeSitterDartTests",
        ),
    ],
    cLanguageStandard: .c11,
)
