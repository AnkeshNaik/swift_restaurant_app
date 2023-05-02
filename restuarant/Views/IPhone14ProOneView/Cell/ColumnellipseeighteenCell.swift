import SwiftUI

struct ColumnellipseeighteenCell: View {
    var ellipseeighteenClick: (() -> Void)?
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_ellipse18")
                .resizable()
                .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(77.0),
                       alignment: .leading)
                .scaledToFit()
                .onTapGesture {
                    ellipseeighteenClick?()
                }
            Image("img_ellipse11")
                .resizable()
                .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(77.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Capsule())
                .padding(.top, getRelativeHeight(22.0))
            Image("img_ellipse13")
                .resizable()
                .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(77.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(21.0))
        }
        .frame(width: getRelativeWidth(71.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ColumnellipseeighteenCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnellipseeighteenCell()
 }
 } */
