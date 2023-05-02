import SwiftUI

struct IPhone14FourView: View {
    @StateObject var iPhone14FourViewModel = IPhone14FourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text(StringConstants.kMsgThankYouForO)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(27.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.DeepOrangeA400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(68.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(88.0))
                            .padding(.horizontal, getRelativeWidth(52.0))
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 69.0, topRight: 69.0, bottomLeft: 69.0,
                                               bottomRight: 69.0)
                            .fill(ColorConstants.Orange400))
                    .shadow(color: ColorConstants.Red100, radius: 40, x: 0, y: 20)
                }
            }
            .frame(width: getRelativeWidth(327.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.vertical, getRelativeHeight(306.0))
            .padding(.horizontal, getRelativeWidth(32.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone14FourView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone14FourView()
    }
}
