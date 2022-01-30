//
//  MenuView.swift
//  Emassi
//
//  Created by MacBook Pro on 21.01.2022.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        NavigationView{
        VStack(alignment: .leading) {
            HStack{
                NavigationLink(
                    destination: Profile().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                    label:{
                Image("avatar")
                    .resizable()
                    .frame(width: 80, height:100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                Text("Захаренко Валентин Валентинович")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    })
            }
            .padding(.bottom,20)
            
            VStack (alignment:.leading) {
                HStack {
                    VStack{
                        Image(systemName: "rectangle.stack.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth: 22)
                    NavigationLink(
                        destination: CategoryList().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                        label:{
                    VStack{
                        Text("Категории")
                            .foregroundColor(.black)
                    }
                        }
                        )
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "deskclock.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Активные заявки")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "message.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Чат")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Избранное")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "folder.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Архив заявок")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    NavigationLink(
                        destination: Profile().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                        label:{
                    VStack{
                        Text("Профиль")
                            .foregroundColor(.black)
                    }
                        })
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Регистрация специалиста")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Помощь")
                    }
                }
                .padding(.bottom,5)
                .frame(maxWidth:.infinity, alignment:.leading)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray),
                    alignment: .bottom)
                HStack {
                    VStack{
                        Image(systemName: "gear")
                            .foregroundColor(Color.gray)
                    }
                    .frame(minWidth:22)
                    VStack{
                        Text("Настройки")
                    }
                }
                
            }
            Spacer()
            
        }
        .padding(.horizontal, 20)
        .background(Color(red: 0.944, green: 0.965, blue: 0.969))
        .navigationBarHidden(true)
        .navigationBarTitle("")
    }
    }
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
