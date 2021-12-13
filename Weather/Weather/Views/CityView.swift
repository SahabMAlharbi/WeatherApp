//
//  CityView.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import SwiftUI
struct CityView: View {
        
        @ObservedObject var cityVM: CityViewModel
        
        var body: some View {
            VStack {
                CityNameView(city: cityVM.city, date: cityVM.date)
                    .shadow(radius: 0)
                TodayWeatherView(cityVM: cityVM)
                    .padding()
                HourlyWeatherView(cityVM: cityVM)
                DailyWeatherView(cityVM: cityVM)
            }.padding(.bottom, 100)
        }
    }

    struct CityView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

