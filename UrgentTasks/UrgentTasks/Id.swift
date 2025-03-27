import SwiftUI
 
struct Id: View {
	var body: some View {
		ZStack{
			
			Image("pingvim")
				.resizable()
				.ignoresSafeArea()
				.scaledToFill()
			
			VStack(spacing: 30) {
				Text("Criadores da aplicação:")
					.font(.largeTitle)
				
				HStack{
					VStack{
						Text("Filipa Araújo")
							.font(.title2)
							.fontWeight(.bold)
						Text("Autoavaliação: 17")
					}
					VStack{
						Text("Guilherme Carasek")
							.font(.title2)
							.fontWeight(.bold)
						Text("Autoavaliação: 12")
						
					}
				}
				
				
				Text("Informação de elementos não pedidos e inseridos na aplicação:")
					.font(.title3)
				
				List{
					Text("A ser anunciado")
					Text("Pingvim")
					Text("Opacity")
					Text("etc")
				}
				.foregroundStyle(Color.white)
				.cornerRadius(20)
				
				
			}
			.frame(width: 250)
			.padding(60)
			.foregroundColor(.black)
			.background(Color.orange)
			.opacity(0.5)
			.cornerRadius(30)
			
		}
		.preferredColorScheme(.dark)
	}
}
 
#Preview {
	Id()
}
