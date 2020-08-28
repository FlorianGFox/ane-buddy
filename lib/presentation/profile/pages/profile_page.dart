import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../../injection.dart';
import '../../core/pages/loading_page.dart';
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
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<_ProfilePage> {
  Widget pageToBuild = Container();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {
            setState(() {
              pageToBuild = _createLodingPage(context, 'Lade Profil...');
            });
          },
          finishedLoading: (state) {
            setState(() {
              pageToBuild = _createProfilePage(context, state.profile);
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

  Widget _createLodingPage(BuildContext context, String text) {
    return LoadingPage(text: text);
  }

  Widget _createProfilePage(BuildContext context, Profile profile) {
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
