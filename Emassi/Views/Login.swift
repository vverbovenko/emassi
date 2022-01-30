//
//  SignIn.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import SwiftUI

struct Login: View {
    
    @State var savePassChecked:Bool = false
    @StateObject private var loginVM = LoginViewModel()
    func toggleSave(){savePassChecked = !savePassChecked}
    
    var body: some View {
        
        VStack{
            
            VStack(alignment:.center){
                
                VStack(alignment:.center, spacing: 0) {
                    
                    Text("Приветствуем в Emassi!")
                        .font(.title.bold()).foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0))
                        .scaledToFill()
                    
                    Text("Войдите в аккаунт")
                        .foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0))
                        .multilineTextAlignment(.center)
                        .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
                VStack(alignment:.leading){
                    VStack(alignment:.center) {
                        TextField("Электронная почта или телефон", text: $loginVM.email)
                            .padding(10)
                            .foregroundColor(.gray)
                            .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                            .cornerRadius(10)
                        
                            .preferredColorScheme(.light)
                            .multilineTextAlignment(.leading)
                            .scaledToFit()
                    }
                    
                    VStack(alignment:.center) {
                        SecureField("Пароль", text: $loginVM.password)
                            .padding(10)
                            .foregroundColor(.gray)
                            .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                            .cornerRadius(10)
                        
                            .preferredColorScheme(.light)
                            .multilineTextAlignment(.leading)
                            
                    }
                    
                    HStack(){
                        Button(action: toggleSave){
                            
                            Image(systemName: savePassChecked ? "checkmark.circle": "circle")
                            Text("Запомнить пароль")
                        }
                        
                    }
                    .foregroundColor(Color.gray)
                    
                    
                }
                
                VStack(alignment:.center){
                    VStack(alignment:.center){
                        Button(action: {loginVM.login()}){
                            Text("Войти")
                                .font(.headline)
                            
                                .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                .cornerRadius(10)
                        }
                    }
                    VStack{
                        NavigationLink(
                            destination: SignUp().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                            label: {
                                Text("Зарегистрироваться в Emassi")
                                
                                    .font(.headline)
                                
                                    .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                                    .foregroundColor(.white)
                                
                                    .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                                    .cornerRadius(10)
                                
                            })
                    }
                    .scaledToFit()
                    VStack{
                        Button(action: {}){
                            Text("Забыли пароль?")
                                .font(.headline)
                                .foregroundColor(.gray)
                                .padding(.top, 10)
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            Login()
        }
    }
}
