//
//  MainScreenView.swift
//  Spar
//
//  Created by Дмитрий Скок on 10.08.2023.
//

import SwiftUI

struct MainScreenView: View {
    @State private var text = ""

    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .environmentObject(HomeViewModel())
                    .tabItem {
                        Label("Главная", systemImage: "house")
                    }
                Text("Каталог")
                    .tabItem {
                        Label("Каталог", systemImage: "square.grid.2x2")
                    }
                Text("Корзина")
                    .tabItem {
                        Label("Корзина", systemImage: "cart")
                    }
                Text("Профиль")
                    .tabItem {
                        Label("Профиль", systemImage: "person")
                    }
            }
            .accentColor(Color.green)
            .navigationBarItems(
                leading: makeSearchView(),
                trailing: makeMenuView()
            )
            .navigationBarTitleDisplayMode(.inline)
            .onTapGesture {
                UIApplication.shared.endEditing()
            }
        }
    }

    private func makeSearchView() -> some View {
        HStack(spacing:0) {
            Image(systemName: "location")
                .padding(.leading, 4)
                .foregroundColor(.red)

            TextField("Moskow", text: $text)
                .padding(7)
        }
        .frame(width: 300)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.black, lineWidth: 1)
        )
    }

    private func makeMenuView() -> some View {
        Button {
            print("Tapped Menu View")
        } label: {
            Image(systemName: "text.justify")
                .foregroundColor(.green)
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
            MainScreenView()
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
