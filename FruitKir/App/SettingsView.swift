//
//  SettingsView.swift
//  FruitKir
//
//  Created by Test on 18.09.23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "FruitKir", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Spacer()
                            Text("Fruit information.")
                        }
                    }
                    //section 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider()
                            .padding(.vertical, 4)
                        Text("You can restart the application.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    //section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Aliaksei")
                        SettingsRowView(name: "Designer", content: "Aliaksei")
                        SettingsRowView(name: "Compatibility", content: "iOS 16.4")
                        SettingsRowView(name: "Website", linkLabel: "pterokir", linkDestination: "www.instagram.com/pterokir")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
                .navigationTitle(Text("Settings"))
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.callAsFunction()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()

                }
            }
        }
    }


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
