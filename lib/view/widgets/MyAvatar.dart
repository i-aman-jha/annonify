import 'package:annonify/controller/app/avatar_controller.dart';
import 'package:annonify/services/auth_service.dart';
import 'package:annonify/utils/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyAvatar extends StatelessWidget {
  final String? name;

  const MyAvatar({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    AvatarController avatarController = Get.find<AvatarController>();
    final avatar = avatarController.getAvatarByName(name ?? "");

    return Obx(
      () {
        print(avatarController.avatars);
        print(avatar);
        return CircleAvatar(
          backgroundColor: Colors.white,
          child: (avatar != null && avatar.svgData != null)
              ? SvgPicture.string(avatar.svgData!)
              : SvgPicture.asset("assets/images/group_logo.svg"),
        );
      },
    );
  }
}

// class ChatAvatar extends StatefulWidget {
//   final String? userId;
//
//   const ChatAvatar({
//     super.key,
//     required this.userId,
//   });
//
//   @override
//   State<ChatAvatar> createState() => _ChatAvatarState();
// }
//
// class _ChatAvatarState extends State<ChatAvatar> {
//   AvatarController avatarController = Get.find<AvatarController>();
//   final authService = Get.find<AuthService>();
//
//   String? userAvatar;
//
//   @override
//   void initState() {
//     super.initState();
//     getAvatar();
//   }
//
//   // Fetch avatar name asynchronously
//   Future<void> getAvatar() async {
//     final avatarName = await User().getAvatarName(widget.userId!);
//     setState(() {
//       userAvatar = avatarName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (userAvatar == null) {
//       // Show a loading indicator while avatar is being fetched
//       return const CircularProgressIndicator();
//     }
//
//     final avatar = avatarController.getAvatarByName(userAvatar!);
//
//     return Container(
//       height: 35,
//       width: 35,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(
//           Radius.circular(8),
//         ),
//       ),
//       child: avatar != null && avatar.svgData != null
//           ? SvgPicture.string(avatar.svgData!
//               .replaceAll(RegExp(r'<metadata[^>]*>(.|\n)*?</metadata>'), ''))
//           : SvgPicture.asset("assets/images/group_logo.svg"),
//     );
//   }
// }

class ChatAvatar extends StatelessWidget {
  final String userId;

  const ChatAvatar({super.key, required this.userId});

  // Function to fetch avatar name
  Future<String?> fetchAvatar() async {
    return await User().getAvatarName(userId);
  }

  @override
  Widget build(BuildContext context) {
    // Fetch controllers using GetX
    AvatarController avatarController = Get.find<AvatarController>();

    return FutureBuilder<String?>(
      future: fetchAvatar(),
      builder: (context, snapshot) {
        // While fetching data
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 35,
            width: 35,
            child: CircularProgressIndicator(),
          );
        }

        // If an error occurred
        if (snapshot.hasError) {
          return const SizedBox(
            height: 35,
            width: 35,
            child: Icon(Icons.error),
          );
        }

        // If no data or null avatar
        if (!snapshot.hasData || snapshot.data == null) {
          return const SizedBox(
            height: 35,
            width: 35,
            child: Icon(Icons.person),
          );
        }

        // Extract avatar name
        final userAvatar = snapshot.data!;
        final avatar = avatarController.getAvatarByName(userAvatar);

        // Render avatar
        return Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: avatar != null && avatar.svgData != null
              ? SvgPicture.string(
                  avatar.svgData!.replaceAll(
                    RegExp(r'<metadata[^>]*>(.|\n)*?</metadata>'),
                    '',
                  ),
                )
              : SvgPicture.asset("assets/images/group_logo.svg"),
        );
      },
    );
  }
}
