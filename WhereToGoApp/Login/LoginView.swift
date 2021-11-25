//
//  LoginView.swift
//  WhereToGoApp
//
//  Created by Omar Regalado on 24/11/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            Text("Where 2 Go?")
                .fontWeight(.black)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.green)
                
                
                
            
            VStack {
                //Login button
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .fontWeight(.bold)
                        .font(.title)
                }
                .buttonStyle(FilledRoundedButton(backgroundColor: .green,
                                                 fontColor: .black,
                                                 cornerRadius: 45))
                
                
                //Sign Up Button
                Button {
                    
                } label: {
                    Text("Sign Up!")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .buttonStyle(SignUpButtonStyle(fontColor: .green,
                                               borderColor: .green,
                                               borderWidth: 5.0))
            }
            

                
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
            
    }
}

struct FilledRoundedButton: ButtonStyle {
    
    var backgroundColor: Color
    var fontColor: Color
    var cornerRadius: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 100,
                   maxWidth: .infinity)
            .background(backgroundColor)
            .foregroundColor(fontColor)
            .cornerRadius(cornerRadius)
            .padding(10)
            .buttonBorderShape(.roundedRectangle)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct SignUpButtonStyle: ButtonStyle {
    
    var fontColor: Color
    var borderColor: Color
    var borderWidth: CGFloat
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(fontColor)
            .padding()
            .frame(minWidth: 100,
                   maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 45)
                        .stroke(borderColor,
                                lineWidth: borderWidth))
            .padding(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
