//
//  SettingsButton.swift
//  SimpleX
//
//  Created by Evgeny Poberezkin on 31/01/2022.
//  Copyright © 2022 SimpleX Chat. All rights reserved.
//

import SwiftUI

struct SettingsButton: View {
    @State private var showSettings = false

    var body: some View {
        Button { showSettings = true } label: {
            Image(systemName: "gearshape")
        }
        .sheet(isPresented: $showSettings, content: {
            SettingsView()
        })
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}