//
//  RemoteImage.swift
//  Appetizers-SwiftUI
//
//  Created by Itamar Axelrad on 20/04/2024.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil

    func load(fromURLString urlString:String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}


struct RemoteImage: View {

    var image: Image?

    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}


struct AppetizerRemoteImage: View {

    @StateObject var imageLoader = ImageLoader()
    let urlString: String

    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{ imageLoader.load(fromURLString: urlString) }
        .enableInjection()
    }

    #if DEBUG
    @ObserveInjection var forceRedraw
    #endif
}
