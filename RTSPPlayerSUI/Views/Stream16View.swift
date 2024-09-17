//
//  Stream16View.swift
//  RTSPPlayerSUI
//
//  Created by bi119aTe5hXk on 2023/06/06.
//

import SwiftUI

struct Stream16View: View {
    @State var urlArr:Array<String?>
    
    var body: some View {
        HStack(spacing: 0){
            VStack(spacing: 0){
                if urlArr.count >= 1{
                    VLCPlayerView(mediaUrl: $urlArr[0])
                }
                if urlArr.count >= 2{
                    VLCPlayerView(mediaUrl: $urlArr[1])
                }
                if urlArr.count >= 3{
                    VLCPlayerView(mediaUrl: $urlArr[2])
                }
                if urlArr.count >= 4{
                    VLCPlayerView(mediaUrl: $urlArr[3])
                }
            }
            VStack(spacing: 0){
                if urlArr.count >= 5{
                    VLCPlayerView(mediaUrl: $urlArr[4])
                }
                if urlArr.count >= 6{
                    VLCPlayerView(mediaUrl: $urlArr[5])
                }
                if urlArr.count >= 7{
                    VLCPlayerView(mediaUrl: $urlArr[6])
                }
                if urlArr.count >= 8{
                    VLCPlayerView(mediaUrl: $urlArr[7])
                }
            }
            VStack(spacing: 0){
                if urlArr.count >= 9{
                    VLCPlayerView(mediaUrl: $urlArr[8])
                }
                if urlArr.count >= 10{
                    VLCPlayerView(mediaUrl: $urlArr[9])
                }
                if urlArr.count >= 11{
                    VLCPlayerView(mediaUrl: $urlArr[10])
                }
                if urlArr.count >= 12{
                    VLCPlayerView(mediaUrl: $urlArr[11])
                }
            }
            VStack(spacing: 0){
                if urlArr.count >= 13{
                    VLCPlayerView(mediaUrl: $urlArr[12])
                }
                if urlArr.count >= 14{
                    VLCPlayerView(mediaUrl: $urlArr[13])
                }
                if urlArr.count >= 15{
                    VLCPlayerView(mediaUrl: $urlArr[14])
                }
                if urlArr.count >= 16{
                    VLCPlayerView(mediaUrl: $urlArr[15])
                }
            }
        }.padding(0)
            .edgesIgnoringSafeArea(.all)
			.onAppear { UIApplication.shared.isIdleTimerDisabled = true }
			.onDisappear { UIApplication.shared.isIdleTimerDisabled = false }
    }
}

struct Stream16View_Previews: PreviewProvider {
    static var previews: some View {
        let arr = Array(repeating: "about:blank", count: 16)
        Stream16View(urlArr: arr)
    }
}
