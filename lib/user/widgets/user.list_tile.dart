import 'package:flutter/material.dart';
import 'package:model_house/model_house.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(user: user),
      title: Text(
        user.displayName,
      ),
      subtitle: Text(
        user.createdAt?.toShort ?? '',
      ),
      onTap: () => showGeneralDialog(
          context: context,
          pageBuilder: (_, __, ___) => const UserProfileUpdateScreen()),
    );
  }
}
