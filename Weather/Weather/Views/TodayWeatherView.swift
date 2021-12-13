//
//  TodayWeatherView.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import SwiftUI

struct TodayWeatherView: View {
    @ObservedObject var cityVM: CityViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Today")
                .font(.system(size: 42))
                .bold()
            
            HStack(spacing: 20) {
                
                VStack(alignment: .leading) {
                    Text("\(cityVM.temperature)°C")
                        .font(.system(size: 42))
                    Text(cityVM.conditions)
                }
            }
            
            HStack {
                Spacer()
                widgetView(image: "wind", color: .white, title: "\(cityVM.windSpeed)mi/hr")
                Spacer()
                widgetView(image: "drop.fill", color: .white, title: "\(cityVM.humidity)")
                Spacer()
                widgetView(image: "umbrella.fill", color: .white, title: "\(cityVM.rainChances)")
                Spacer()
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(.clear))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    
    private func widgetView(image: String, color: Color, title: String) -> some View {
        VStack {
            Image(systemName: image)
                .padding()
                .font(.title)
                .foregroundColor(color)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.clear))
            
            Text(title)
        }
    }
}


struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
