import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository.dart';
import 'package:medicine_reminder_app/core/presentation/custom_text_field.dart';
import 'package:medicine_reminder_app/core/presentation/router.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isLoading = ref.watch(authRepositoryProvider).isLoading;

    final formKey = GlobalKey<FormState>();

    ref.listen(authRepositoryProvider, (previous, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error.toString()),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Theme.of(context).errorColor,
          ),
        );
      } else if (next.user != null) {
        emailController.clear();
        passwordController.clear();

        context.replaceRoute(const MedicineRoute());
      }
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                isLoading: isLoading,
                label: 'E-MAIL',
                controller: emailController,
                validator: (value) {
                  if (value == null ||
                      !RegExp(r"^[a-zA-Z\d.a-zA-Z!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid E-Mail';
                  }
                  return null;
                },
              ),
              CustomTextField(
                isLoading: isLoading,
                label: 'PASSWORD',
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return 'Password should have more than 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          if (formKey.currentState?.validate() ?? false) {
                            ref
                                .read(authRepositoryProvider.notifier)
                                .loginUsingEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                          }
                        },
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : const Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                ),
              ),
              TextButton(
                onPressed: () =>
                    context.replaceRoute(const CreateAccountRoute()),
                child: const Text('Create Account'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
