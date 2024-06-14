// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/core/core.dart';
import '/config/config.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // fill data
    sl<HomeManager>().fillHeaderData(context);
    final r = Provider.of<ResponsiveManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return SizedBox(
          height: r.height(AppSize.hs124),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: r.width(AppSize.ws300),
                child: SvgIconWidget(
                  name: 'beye_logo_1',
                  width: r.width(AppSize.ws210),
                ),
              ),
              const Spacer(),
              if (p.headerData.length > 2)
                for (int i = 0; i < p.headerData.length - 2; i++) ...[
                  _textButton(
                    context,
                    data: p.headerData[i].title,
                    isSelected: p.headerData[i].isSelected,
                    onPressed: p.headerData[i].onPressed,
                  ),
                  SizedBox(width: r.response(AppSize.ws56)),
                ],
              const Spacer(),
              if (isDesktop(context))
                SizedBox(
                  width: r.width(AppSize.ws320),
                  child: Row(
                    children: [
                      if (p.headerData.length > 2)
                        for (int i = p.headerData.length - 2;
                            i < p.headerData.length;
                            i++) ...[
                          _textButton(
                            context,
                            data: p.headerData[i].title,
                            isSelected: p.headerData[i].isSelected,
                            onPressed: p.headerData[i].onPressed,
                          ),
                          if (i != p.headerData.length - 1)
                            SizedBox(width: r.response(AppSize.ws56)),
                        ],
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _textButton(
    BuildContext context, {
    required String data,
    required bool isSelected,
    required void Function()? onPressed,
  }) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return TextButton(
      onPressed: onPressed,
      child: TextComponent(
        data,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSelected ? t.fall() : t.white,
          fontFamily: Constants.primaryFont,
          fontSize: r.fontSize(FontSize.s20),
        ),
      ),
    );
  }
}
