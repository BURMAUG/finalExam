import SwiftUI
import KingFisher

struct CharacterRow: View {
    
    var character: MarvelCharacter
    
    var body: some View {
        VStack {
            HStack {
                KFImage(character.thumbnail?.getImageURL())
                    .resizable()
                    .frame(width: 32, height: 32)
                    .cornerRadius(6)
            }
            Text(character.name?)
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: MarvelCharacter.ironMan)
    }
}