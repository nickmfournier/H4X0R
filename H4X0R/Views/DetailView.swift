//
//  DetailView.swift
//  H4X0R
//
//  Created by Nick Fournier on 2020-04-12.
//  Copyright © 2020 Nick Fournier. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {

        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://wwww.google.com")
    }
}


