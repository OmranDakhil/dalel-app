import 'package:dalel1/core/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_form.dart';
import '../widgets/have_an_acount_widget.dart';
import '../widgets/terms_and_condition.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(child: WelcomeTextWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(child: CustomForm()),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(child: TermsAndConditions()),
            const SliverToBoxAdapter(child: SizedBox(height: 88)),
            SliverToBoxAdapter(
                child: CustomButtonWidget(
              title: "Sign Up",
              onPressed: () {},
            )),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(
                child: HaveAnAccount(
              text1: "Already have an account?",
              text2: "sign in ",
            ))
          ],
        ),
      ),
    );
  }
}
