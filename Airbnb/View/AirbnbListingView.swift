//
//  AirbnbListingView.swift
//  Airbnb
//
//  Created by Manvendu Pathak on 02/03/24.
//

import SwiftUI

struct AirbnbListingView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    var body: some View {
        NavigationView {
            Text("Loading")
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}

struct AirbnbListingView_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbListingView()
    }
}
