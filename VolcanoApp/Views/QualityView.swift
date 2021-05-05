//
//  QualityView.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 4.5.2021.
//

import SwiftUI

struct QualityView: View {
    @EnvironmentObject var dataModals: ApiModal
    
    var body: some View {
        VStack {
            List(dataModals.results, id: \.self) { result in
                VStack(alignment: .leading) {
                    Text("\(result.location)")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    HStack {
                        ZStack {
                            if let measurement = result.so2 {
                                
                                if measurement.value <= 100 {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 100, height: 50)
                                } else {
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 100, height: 50)
                                }
                                Text(measurement.parameter)
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        ZStack {
                            if let measurement = result.pm10 {
                                if measurement.value <= 10 {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 100, height: 50)
                                } else {
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 100, height: 50)
                                }
                                
                                Text(measurement.parameter)
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        ZStack {
                            if let measurement = result.no2 {
                                if measurement.value <= 10 {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 100, height: 50)
                                } else {
                                    Circle()
                                        .fill(Color.orange)
                                        .frame(width: 100, height: 50)
                                }
                                
                                Text(measurement.parameter)
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }    }
    }
}

struct QualityView_Previews: PreviewProvider {
    static var previews: some View {
        QualityView()
    }
}
