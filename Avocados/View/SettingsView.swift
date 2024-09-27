//
//  SettingsView.swift
//  Avocados
//
//  Created by Alex Maina on 25/09/2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var enabledNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocado")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            // FORM
            Form {
                // Section
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enabledNotifications) {
                        Text("Enable notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                .background(Color.clear)
                
                // SECTION 2
                Section(header: Text("Appliation")) {
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Avocado Recipe")
                    }
                    
                    HStack {
                        Text("Compactibily")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("iPhone, iPad, Mac")
                    }
                    
                    
                    HStack {
                        Text("Designer")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Leon Mwangi")
                    }
                    
                    HStack {
                        Text("Developer")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Alex Maina")
                    }
                    HStack {
                        Text("Version")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("1.0.0")
                    }
                }
            }
            .background(Color.clear)
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
