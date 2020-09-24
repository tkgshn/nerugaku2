//
//  TabD
//LibraryView.swift
//  nerugaku1
//
//  Created by Shunsuke Takagi on 2020/07/22.
//  Copyright © 2020 Shunsuke Takagi. All rights reserved.
//

import SwiftUI

struct LibraryView: View {
    @State var currentSubCategoryIndex = 0
    @State var showingProfile = false
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
//                NavigationView {
        YourLibraryView(currentSubCategoryIndex: self.$currentSubCategoryIndex).padding(.top, 73.0)
            .edgesIgnoringSafeArea(.top)
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
            }
        
        //        }.navigationBarTitle(Text("Landmarks"))
//        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
            LibraryView()
//        }
    }
}
