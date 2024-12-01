//
//  ContentView.swift
//  BinaryPuzzle
//
//  Created by Kaneis Zontanos on 12/1/24.
//

import SwiftUI

struct StartView: View {
    @State private var isSheetPresented: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Binary Puzzle")
                    .font(.title)
                    .fontWeight(.black)
                
                Spacer()
                
                
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .frame(width: 200, height: 100)
                    .overlay {
                        Button {
                            
                        } label: {
                            Text("Start \nGame")
                        }
                        .fontDesign(.monospaced)
                        .font(.title2)
                        .foregroundStyle(.white, .gray)
                        .tint(.black)
                        .buttonStyle(.borderedProminent)
                    }
                    .foregroundStyle(.gray)
                
                
                Spacer()
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isSheetPresented) {
            
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    StartView()
}
