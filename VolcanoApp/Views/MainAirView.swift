
import Foundation
import SwiftUI



struct MainAirView: View {
    @EnvironmentObject var dataModals: ApiModal
    
    
    var body: some View {
        
        
        VStack {
            AirQualityView()
        }
        .padding(.top, 40)
        .padding()
        .navigationTitle("Loftgæðin í dag")
        .navigationBarTitleDisplayMode(.inline)
    }
}

