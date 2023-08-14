import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user_model.dart';
import 'package:flutter_application_4/service/user_service.dart';
import 'package:flutter_application_4/views/cubit/users_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(),
      child: BlocConsumer<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state is UsersLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UsersError) {
            return Center(
              child: Text("Error"),
            );
          }
          return ListView.builder(
            itemCount: context.watch<UsersCubit>().users.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(context.watch<UsersCubit>().users[index].name ?? "--"),
                subtitle: Text(context.watch<UsersCubit>().users[index].email ?? "--"),
                trailing: Icon(Icons.person),
                leading: Text("${index + 1}"),
              );
            },
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
