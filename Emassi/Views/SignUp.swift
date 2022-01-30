//
//  SignUp.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import SwiftUI

struct SignUp: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var repeatPassword: String = ""
    @State var agreedRulesChecked:Bool = false
    @State var agreedMailsChecked:Bool = false
    func toggleRules(){agreedRulesChecked = !agreedRulesChecked}
    func toggleMails(){agreedMailsChecked = !agreedMailsChecked}
    
    var body: some View {
        VStack{
            VStack(alignment:.center, spacing: 0) {
                
                Text("Приветствуем в Emassi!")
                    .font(.title.bold()).foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0))
                    .scaledToFill()
                
                Text("Регистрация аккаунта")
                    .foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0))
                    .multilineTextAlignment(.center)
                    .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }
            
            VStack(alignment:.center){
            VStack(alignment:.center) {
                TextField("Электронная почта или телефон", text: $username)
                    .padding(10)
                    .foregroundColor(.gray)
                    .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                .cornerRadius(10)

                    .preferredColorScheme(.light)
                    .multilineTextAlignment(.leading)
            }
            
            VStack(alignment:.center) {
                SecureField("Пароль", text: $password)
                    .padding(10)
                    .foregroundColor(.gray)
                    .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                    .cornerRadius(10)

                    .preferredColorScheme(.light)
                    .multilineTextAlignment(.leading)
            }
                
                VStack(alignment:.center) {
                    SecureField("Повторите пароль", text: $repeatPassword)
                        .padding(10)
                        .foregroundColor(.gray)
                        .background(Color(red:192.0/255.0, green:192.0/255.0, blue:192.0/255.0, opacity:0.4))
                        .cornerRadius(10)

                        .preferredColorScheme(.light)
                        .multilineTextAlignment(.leading)
                }
            }
            VStack(alignment:.leading){
                VStack(alignment:.center){
                Button(action: {}){
                    Text("Зарегестрироваться в Emassi")
                        .font(.headline)
        
                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                        .cornerRadius(10)
                }
                }
            
            HStack(){
                Button(action: toggleRules){
                            
                                Image(systemName: agreedRulesChecked ? "checkmark.circle": "circle")
                    
                                Text("Я соглашаюсь с правилами пользования сервиса, также с передачей и обработкой моих данных в Emassi. Я подтверждаю свое совершеннолетие и ответственность за размещение объявления.")
                        .multilineTextAlignment(.leading)
                            }
                
                        }
                .foregroundColor(Color.gray)
                
                HStack(){
                Button(action: toggleMails){
                            
                                Image(systemName: agreedMailsChecked ? "checkmark.circle": "circle")
                                Text("Переодически всем пользователям сервиса мы присылаем письма с новостями Emassi и интересными объявлениями. Если Вы хотите быть в курсе того, что происходит с Emassi, по")
                        .multilineTextAlignment(.leading)
            
                            }

                        }
                .foregroundColor(Color.gray)
            }
            Divider()
            VStack(alignment:.center){
                VStack(alignment:.center){
                Button(action: {}){
                    Text("Войти через Facebook")
                        .font(.headline)
        
                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(red: 0.259, green: 0.405, blue: 0.699))
                        .cornerRadius(10)
                }
                }
                VStack(alignment:.center){
                Button(action: {}){
                    Text("Войти через Google")
                        .font(.headline)
        
                        .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(red: 0.259, green: 0.522, blue: 0.958))
                        .cornerRadius(10)
                }
                }
                VStack{
                NavigationLink(
                    destination: Login().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                    label: {
                        Text("У меня уже есть аккаунт Emassi")
                            
                            .font(.headline)
                            
                            .frame(maxWidth:.infinity, minHeight: 40, alignment: .center)
                            .foregroundColor(.white)
                            
                            .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                            .cornerRadius(10)
                            
                    })
                }
            }
            }
        .padding(10)
        }
    }


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
