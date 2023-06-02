import SwiftUI

struct ContentView: View {
    @StateObject private var chatViewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            ChatHeaderView()
            
            ScrollView {
                ForEach(chatViewModel.messeges, id: \.description) { message in
                    MessageView(message: message, marker: chatViewModel.marker)
                }
                .rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.10))
            
            InputView(chatViewModel: chatViewModel)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
