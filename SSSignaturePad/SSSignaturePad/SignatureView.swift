//
//  SignatureView.swift
//  SampleSwiftui
//
//  Created by Krupanshu Sharma on 16/07/24.
//

import SwiftUI

public struct SignatureViewContainer: UIViewRepresentable {
    @Binding public var clearSignature: Bool
    @Binding public var signatureImage: UIImage?
    @Binding public var pdfSignature: Data?

    @State private var updateDataToggle: Bool = false

    public init(clearSignature: Binding<Bool>, signatureImage: Binding<UIImage?>, pdfSignature: Binding<Data?>) {
        _clearSignature = clearSignature
        _signatureImage = signatureImage
        _pdfSignature = pdfSignature
    }

    public func makeUIView(context: Context) -> SSDrawSignatureView {
        let aSignatureView = SSDrawSignatureView(backgroundColor: UIColor(Color.white))
        aSignatureView.delegate = context.coordinator
        aSignatureView.strokeColor = UIColor(.green)
        return aSignatureView
    }

    public func updateUIView(_ uiView: SSDrawSignatureView, context: Context) {
        if clearSignature {
            uiView.clear()
            DispatchQueue.main.async {
                self.clearSignature.toggle()
                self.signatureImage = nil
                self.pdfSignature = nil
            }
        }
    }

    public func makeCoordinator() -> Coordinator {
        return Coordinator(signatureContainer: self)
    }

    public func updateSignature() {
        updateDataToggle.toggle()
    }
}

extension SignatureViewContainer {
    public class Coordinator: SSSignatureDelegate {
        public var signatureContainer: SignatureViewContainer

        public init(signatureContainer: SignatureViewContainer) {
            self.signatureContainer = signatureContainer
        }

        public func didStart() {}

        public func didFinish(_ view: SSDrawSignatureView) {
            signatureContainer.signatureImage = view.getSignature()
            signatureContainer.pdfSignature = view.getPDFSignature()
        }
    }
}

extension UIView {
    public convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }
}
