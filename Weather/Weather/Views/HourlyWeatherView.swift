//
//  HourlyWeatherView.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import SwiftUI

struct HourlyWeatherView: View {
@ObservedObject var cityVM: CityViewModel
        
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(cityVM.weather.hourly) { weather in
                        let icon = cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
                        let hour = cityVM.getTimeFor(timestamp: weather.dt)
                        let temp = cityVM.getTempFor(temp: weather.temp)
                        getHourlyView(hour: hour, image: icon, temp: temp)
                            
                    }
                }
            } .frame(width: 400, height: 150, alignment: .center)
        }
        
        private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
            VStack(spacing: 20) {
                Text(hour)
                image
                    .foregroundColor(.yellow)
                Text(temp)
            }
            .foregroundColor(.white)
            .padding()
            .background(.clear)
        }
    }

    struct HourlyWeatherView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }

}
