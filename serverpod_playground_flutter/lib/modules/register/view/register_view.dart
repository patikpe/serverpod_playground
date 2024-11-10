// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:go_router/go_router.dart';

// class RegisterView extends StatelessWidget {
//   RegisterView({super.key});

//   final _formKey = GlobalKey<FormBuilderState>();

//   final TextEditingController _passwordConfirm = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => RegisterCubit(),
//       child: BlocConsumer<RegisterCubit, RegisterState>(
//         listener: (context, state) {
//           if (state.status == RegisterStatus.success) {
//             context.go('/home');
//           } else if (state.status == RegisterStatus.weakPassword) {
//             _formKey.currentState?.fields[FormEnumValues.password.code]
//                 ?.invalidate(S.current.weak_password);
//           } else if (state.status == RegisterStatus.emailAlreadyInUse) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.email_already_in_use);
//           } else if (state.status == RegisterStatus.invalidEmail) {
//             _formKey.currentState?.fields[FormEnumValues.email.code]
//                 ?.invalidate(S.current.invalid_email);
//           } else if (state.status == RegisterStatus.operationNotAllowed) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(S.current.error_try_again),
//               ),
//             );
//           } else if (state.status == RegisterStatus.error) {
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
//                       S.current.register,
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
//                               enabled: state.status == RegisterStatus.loading
//                                   ? false
//                                   : true,
//                               name: FormEnumValues.email.code,
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
//                               enabled: state.status == RegisterStatus.loading
//                                   ? false
//                                   : true,
//                               name: FormEnumValues.password.code,
//                               decoration: InputDecoration(
//                                 labelText: S.current.password,
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return S.current.required_field;
//                                 } else if (value != _passwordConfirm.text) {
//                                   return S.current.confirm_password_error;
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 20),
//                             child: FormBuilderTextField(
//                               controller: _passwordConfirm,
//                               enabled: state.status == RegisterStatus.loading
//                                   ? false
//                                   : true,
//                               name: FormEnumValues.confirmPassword.code,
//                               decoration: InputDecoration(
//                                 labelText: S.current.confirm_password,
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
//                               if (state.status != RegisterStatus.loading) {
//                                 bool? isValid =
//                                     _formKey.currentState?.validate();
//                                 if (isValid == true) {
//                                   _formKey.currentState?.save();
//                                   context.read<RegisterCubit>().registerNewUser(
//                                         _formKey.currentState!
//                                             .value[FormEnumValues.email.code],
//                                         _formKey.currentState!.value[
//                                             FormEnumValues.password.code],
//                                       );
//                                 }
//                               }
//                             },
//                             child: state.status == RegisterStatus.loading
//                                 ? const CircularProgressIndicator()
//                                 : Text(S.current.submit),
//                           ),
//                         ],
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (state.status != RegisterStatus.loading) {
//                           context.push('/login');
//                         }
//                       },
//                       child: Text(S.current.login),
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
