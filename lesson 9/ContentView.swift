import SwiftUI
import SwiftPersistence
struct ContentView: View {
    struct Person: Codable {
        var name: String
        var age: Int
        var money: Double
        var isMale: Bool}
    struct IOSTeachers: Codable {
    var teachers: [Person]
    var isSmart = true
    }
    @Persistent ("text") var text = "Hello,World!"
    var body: some View {
        VStack {
            TextField ("e", text: $text)
        }
        .padding()
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

