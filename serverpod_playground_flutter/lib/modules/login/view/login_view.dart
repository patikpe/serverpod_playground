// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_playground/l10n/generated/l10n.dart';
// import 'package:flutter_playground/modules/login/cubit/login_cubit.dart';
// import 'package:flutter_playground/utilities/form_values_enum.dart';
// import 'package:go_router/go_router.dart';

// class LoginView extends StatelessWidget {
//   LoginView({super.key});

//   final _formKey = GlobalKey<FormBuilderState>();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => LoginCubit(),
//       child: BlocConsumer<LoginCubit, LoginState>(
//         listener: (context, state) {
//           if (state.status == LoginStatus.success) {
//             context.go('/home');
//           } else if (state.status == LoginStatus.userNotFound) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.invalid_credentials);
//           } else if (state.status == LoginStatus.wrongPassword) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.invalid_credentials);
//           } else if (state.status == LoginStatus.userDisabled) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.invalid_credentials);
//           } else if (state.status == LoginStatus.invalidEmail) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.invalid_credentials);
//           } else if (state.status == LoginStatus.error) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(S.current.error_try_again),
//               ),
//             );
//           }
//         },
//         builder: (context, state) {
//           return Scaffold(
//             body: Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Theme.of(context).colorScheme.primaryContainer,
//                 ),
//                 padding: const EdgeInsets.all(20),
//                 constraints: const BoxConstraints(
//                   maxHeight: 500,
//                   maxWidth: 300,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text(
//                       S.current.login,
//                       style: Theme.of(context).textTheme.titleLarge,
//                     ),
//                     FormBuilder(
//                       key: _formKey,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 20),
//                             child: FormBuilderTextField(
//                               name: FormEnumValues.email.code,
//                               enabled: state.status == LoginStatus.loading
//                                   ? false
//                                   : true,
//                               decoration: InputDecoration(
//                                 labelText: S.current.email,
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return S.current.required_field;
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 20),
//                             child: FormBuilderTextField(
//                               name: FormEnumValues.password.code,
//                               enabled: state.status == LoginStatus.loading
//                                   ? false
//                                   : true,
//                               decoration: InputDecoration(
//                                 labelText: S.current.password,
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return S.current.required_field;
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {
//                               if (state.status != LoginStatus.loading) {
//                                 bool? isValid =
//                                     _formKey.currentState?.validate();
//                                 if (isValid == true) {
//                                   _formKey.currentState?.save();
//                                   context.read<LoginCubit>().loginUser(
//                                         _formKey.currentState!
//                                             .value[FormEnumValues.email.code],
//                                         _formKey.currentState!.value[
//                                             FormEnumValues.password.code],
//                                       );
//                                 }
//                               }
//                             },
//                             child: state.status == LoginStatus.loading
//                                 ? const CircularProgressIndicator()
//                                 : Text(S.current.submit),
//                           ),
//                         ],
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (state.status != LoginStatus.loading) {
//                           context.push('/register');
//                         }
//                       },
//                       child: Text(S.current.register),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
