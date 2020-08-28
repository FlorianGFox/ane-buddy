import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../injection.dart';
import '../widgets/profile_form.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<ProfileBloc>()..add(ProfileEvent.load());
      },
      child: _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatefulWidget {
  _ProfilePage({Key key}) : super(key: key);

  @override
  __ProfilePageState createState() => __ProfilePageState();
}

class __ProfilePageState extends State<_ProfilePage> {
  Widget pageToBuild = Container(child: Text('loading'));

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          finishedLoading: (state) {
            setState(() {
              pageToBuild = _createPage(context, state.profile);
            });
          },
          ready: (_) {},
          saving: (_) {},
          finishedSaving: (_) {
            Navigator.pop(context);
          },
        );
      },
      child: pageToBuild,
    );
  }

  Widget _createPage(BuildContext context, Profile profile) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bearbeite Profil'),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              context.bloc<ProfileBloc>().add(ProfileEvent.saveCashedProfile());
            },
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: ProfileForm(profile),
      ),
    );
  }
}
