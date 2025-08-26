//
//  SuccessView.swift
//  HIITFit
//
//  Created by Derek Bardo on 8/25/25.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Button("Continue") {
                    selectedTab = 9
                    dismiss()
                }
                .padding()
            }

            VStack(alignment: .center){
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(Color("Launchscreen-background"))
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("""
                    Good job completing all four exercises!
                    Remember tomorrow's another day.
                    So eat well and get some rest.
                    """)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                
            }
        }
        .presentationDetents([.medium, .large])
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
}
