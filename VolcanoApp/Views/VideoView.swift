//
//  VideoView.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 4.5.2021.
//

import AVKit
import SwiftUI

struct VideoView: View {
    var body: some View {
        
        VStack(spacing: 10) {
        Text("Vefmyndavélar RÚV")
            .font(.title3)
            .padding(.top, 40)
            .padding()
          
        VideoPlayer(player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=BA-9QzIcr3c")!))
      
        VideoPlayer(player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=7-RhgB1INII")!))
    }
        .navigationTitle("Live video af eldgosinu")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
