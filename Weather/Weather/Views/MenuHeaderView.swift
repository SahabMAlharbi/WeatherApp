//
//  MenuHeaderView.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import SwiftUI

struct MenuHeaderView: View {
    @ObservedObject var cityMV: CityViewModel
    @State private var searchTerm = ""
    var body: some View {
        HStack {
            TextField("" ,text: $searchTerm)
                .padding(.leading, 20)
            
            Button{
                cityMV.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    Image(systemName: "magnifyingglass")
                }
            }
            .frame(width: 50, height: 50)
         
            
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment:.leading ){
             Image(systemName: "magnifyingglass")
            .foregroundColor(.white)
            .padding(.leading, 10)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white.opacity(0.2))
    } )
  }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
