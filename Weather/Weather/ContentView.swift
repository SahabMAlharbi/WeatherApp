//
//  ContentView.swift
//  Weather
//
//  Created by Sahab Alharbi on 11/04/1443 AH.
//

import SwiftUI
import CoreLocation
struct ContentView: View {
    let locationManager = CLLocationManager()
    @ObservedObject var cityVM = CityViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("sky")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                MenuHeaderView(cityMV: cityVM).padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }.padding(.top, 10)
            }.padding(.top, 40)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
