import '/exports/exports.dart';

class NoDataWidget extends StatelessWidget {
  final String text;
  const NoDataWidget({super.key, this.text = "There's nothing here.."});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 2.5,
          // child: Image.asset(StaffIcons.empty),
        ),
        const Space(space: 0.06),
        Text(
          text,
          style: TextStyles(context)
              .getDescriptionStyle()
              .copyWith(fontSize: 20, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
