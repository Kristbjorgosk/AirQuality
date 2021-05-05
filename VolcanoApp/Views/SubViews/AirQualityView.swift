//
//  AirQualityView.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 4.5.2021.
//

import Foundation
import SwiftUI

struct AirQualityView: View {
    @EnvironmentObject var dataModals: ApiModal
    @State private var showingSheet = false
    
    
    var body: some View {
        Text("Loftgæðin eftir staðsetningu")
            .padding()
            .font(.title3)
        
        Button("Sjá útskýringar") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
        .padding()
        .frame(width: 200, height: 40)
        .foregroundColor(Color.white)
        .background(Color.orange)
        .cornerRadius(10)
        .padding(.bottom, 40)
        
        QualityView()
        }
    }





struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            Text("Útskýringar á lita merkjunum og mengunarefnunum")
                .foregroundColor(Color.primary)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, 40)
                .padding(.bottom, 10)
            
            Divider()
                .background(Color.orange)
                .frame( width: 200)
                .padding(.bottom, 10)
            
            AirExplainerView()
                .foregroundColor(Color.primary)
            Button("Loka")
            {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .frame(width: 200, height: 40)
            .foregroundColor(Color.white)
            .background(Color.orange)
            .cornerRadius(10)
        }
        .padding()
        .accentColor(.orange)
    }
}





struct AirListView_Previews: PreviewProvider {
    static var previews: some View {
        AirQualityView()
    }
}
