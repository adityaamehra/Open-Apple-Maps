//
//  ContentView.swift
//  AppleMaps
//
//  Created by Adityaa Mehra on 11/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let latitude = 26.421533862854528
            let longitude =  80.32605859741065
            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
            if UIApplication.shared.canOpenURL(url!){
                UIApplication.shared.open(url! , options: [:], completionHandler: nil)
            }
        }, label: {
            Text("Open Maps")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
