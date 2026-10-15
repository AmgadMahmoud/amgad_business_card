import 'package:amgad_business_card/src/gen/assets.gen.dart';
import 'package:amgad_business_card/src/widgets/tappable_text.dart';
import 'package:amgad_business_card/src/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  // rest stays the same, just change StatelessWidget → StatefulWidget
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amgad Mahmoud',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: colors.primary,
          ),
        ),
        actions: const [ThemeToggleButton()],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(24),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: InteractiveViewer(
                        child: Image.asset(Assets.images.personalImage.path),
                      ),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      Assets.images.personalImage.path,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0, -0.5),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) {
                            if (wasSynchronouslyLoaded || frame != null)
                              return child;
                            return Shimmer.fromColors(
                              baseColor: colors.tertiary.withValues(alpha: 0.3),
                              highlightColor: colors.tertiary.withValues(
                                alpha: 0.6,
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                color: colors.tertiary.withValues(alpha: 0.2),
                              ),
                            );
                          },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Senior Software Engineer',
                style: TextStyle(fontSize: 20, color: colors.onSurface),
              ),
              const SizedBox(height: 5),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 20, color: colors.onSurface),
              ),
              const SizedBox(height: 24),
              TappableText(
                label: 'Tel',
                text: '+201154222736',
                uri: 'tel:+201154222736',
              ),
              const SizedBox(height: 16),
              TappableText(
                label: 'Email',
                text: 'amgad.mahmoud.abdallah@gmail.com',
                uri: 'mailto:amgad.mahmoud.abdallah@gmail.com',
              ),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Connect',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colors.primary,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TappableText(
                label: 'GitHub',
                text: 'https://github.com/AmgadMahmoud',
                uri: 'https://github.com/AmgadMahmoud',
                launchMode: LaunchMode.externalApplication,
              ),
              const SizedBox(height: 16),
              TappableText(
                label: 'LinkedIn',
                text: 'https://www.linkedin.com/in/amgad-mahmoud/',
                uri: 'https://www.linkedin.com/in/amgad-mahmoud/',
                launchMode: LaunchMode.externalApplication,
              ),
              const SizedBox(height: 16),
              TappableText(
                label: 'YouTube',
                text: 'https://www.youtube.com/@AmgadMahmoudCAmgadMahmoud',
                uri: 'https://www.youtube.com/@AmgadMahmoudCAmgadMahmoud',
                launchMode: LaunchMode.externalApplication,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
