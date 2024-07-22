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

# Contributing

Contributions are welcome! If you have any improvements or bug fixes, feel free to open a pull request or submit an issue.

# License

SSSignaturePad is available under the MIT license.
