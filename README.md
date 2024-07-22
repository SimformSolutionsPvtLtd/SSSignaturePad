# SSSignaturePad


[![Version](https://img.shields.io/cocoapods/v/SSSignaturePad.svg?style=flat)](https://cocoapods.org/pods/SSSignaturePad)
[![License](https://img.shields.io/cocoapods/l/SSSignaturePad.svg?style=flat)](https://cocoapods.org/pods/SSSignaturePad)
[![Platform](https://img.shields.io/cocoapods/p/SSSignaturePad.svg?style=flat)](https://cocoapods.org/pods/SSSignaturePad)

`SSSignaturePad` is a lightweight and easy-to-use signature pad for iOS applications. It allows users to draw smooth signatures with their finger or a stylus and provides options to customize the appearance and behavior of the signature pad in SwiftUI

## Features

- Smooth signature drawing
- Export signature as image
- Clear signature functionality

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.0+

## Installation

### CocoaPods

`SSSignaturePad` is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your `Podfile`:

pod 'SSSignaturePad'

## SwiftUI Usage example

            import SwiftUI
            import SSSignaturePad

            struct ContentView: View {
                @State var isSigning: Bool = false
                @State var clearSignature: Bool = false
                @Binding var signatureImage: UIImage?
                @Binding var signaturePDF: Data?

                var body: some View {
                    VStack(spacing: 16) {
                        ZStack(alignment: isSigning ? .bottomTrailing: .center) {
                            SignatureViewContainer(clearSignature: $clearSignature, signatureImage: $signatureImage, pdfSignature: $signaturePDF)
                                .disabled(!isSigning)
                                .frame(height: 197)
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.red, lineWidth: 3)
                                )
                            if isSigning {
                                Button(action: {
                                    clearSignature = true
                                }, label: {
                                    HStack {
                                        Text("Clear")
                                            .font(.callout)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, 12)
                                    .frame(height: 28)
                                    .background(
                                        Capsule()
                                            .fill(.red)
                                    )
                                })
                                .offset(.init(width: -12, height: -12))
                            } else {
                                Button(action: {
                                    isSigning = true
                                }, label: {
                                    VStack(alignment: .center, spacing: 0) {
                                        Image(systemName: "pencil")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .frame(width: 20, height: 20)
                                            .padding(8)
                                        Text("Sign here")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(.top, 16)
                        .padding(.horizontal, 3)

                    }
                    .padding()
                }
            }

## How to Contribute 🤝 

Whether you're helping us fix bugs, improve the docs, or a feature request, we'd love to have you! :muscle:
Check out our [**Contributing Guide**](CONTRIBUTING.md) for ideas on contributing.

## Find this example useful? ❤️

Support it by joining [stargazers](https://github.com/SimformSolutionsPvtLtd/SSSwiftUIGIFView/stargazers) :star: for this repository.

## Bugs and Feedback

For bugs, feature feature requests, and discussion use [GitHub Issues](https://github.com/SimformSolutionsPvtLtd/SSSwiftUIGIFView/issues).


## Check out our other Libraries

<h3><a href="https://github.com/SimformSolutionsPvtLtd/Awesome-Mobile-Libraries"><u>🗂 Simform Solutions Libraries→</u></a></h3>


## MIT License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

[PR-image]:https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat
[PR-url]:http://makeapullrequest.com
[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[Swift Compatibility-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FSimformSolutionsPvtLtd%2FSSSwiftUIGIFView%2Fbadge%3Ftype%3Dswift-versions
[Platform Compatibility-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FSimformSolutionsPvtLtd%2FSSSwiftUIGIFView%2Fbadge%3Ftype%3Dplatforms
