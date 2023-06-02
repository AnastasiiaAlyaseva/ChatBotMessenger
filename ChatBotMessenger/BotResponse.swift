import SwiftUI

class Bot {
 
    private let neutralResponses = [
        "I'm sorry, I didn't understand your question.",
        "I'm not sure what you mean.",
        "Can you please rephrase your question?",
        "I'm afraid I don't have an answer for that.",
        "Let me look that up for you.",
        "I'm processing your question, please wait a moment.",
        "I'm having trouble answering that question.",
        "I'm not programmed to respond to that.",
        "I'm sorry, I cannot provide that information.",
    ]
    
    func getBotResponse(message: String) -> String {
        let tempMessage = message.lowercased()
        
        if tempMessage.contains("hello") {
            return "Hey there! I'm ready to help you. Ask me :)"
        } else if tempMessage.contains("goodbye") {
            return "Talk to you leter!"
        } else if tempMessage.contains("how are you") {
            return "I'm fine! How about you?"
        } else {
            return neutralResponses.randomElement() ?? "That's cool"
        }

    }
    
}
