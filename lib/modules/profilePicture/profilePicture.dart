import 'package:autism_project/modules/profilePicture/profile_picture_controller.dart';
import 'package:autism_project/routes/routes.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:autism_project/utils/button.dart';
import 'package:autism_project/themes/color_theme.dart';
import 'package:autism_project/themes/text_theme.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class profilePicture extends StatefulWidget {
  profilePicture({Key? key}) : super(key: key);

  @override
  State<profilePicture> createState() => _profilePictureState();
}

class _profilePictureState extends State<profilePicture> {
  File? _image;

  final _picker = ImagePicker();

  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilePictureController>(builder: (controller) {
      return Scaffold(
          // backgroundColor: Color.fromARGB(255, 231, 239, 246),
          body: _buildProfileUploader(controller));
    });
  }

  Widget _buildProfileUploader(ProfilePictureController controller) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 140, 40, 40),
        child: Column(children: [
          Text(
            'Help friends find you by adding a profile picture',
            style: normalText(color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            color: Color.fromARGB(255, 248, 244, 244),
            child: _image != null
                ? Image.file(_image!, fit: BoxFit.cover)
                : const Text('Please select an image'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: main_button(
                'upload picture',
                _openImagePicker,
                // () {
                // controller.uploadProfilePicture();

                // },
                40,
                10),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: (() {
                Get.toNamed(
                  AppRoutes.home,
                );
              }),
              child: Text('skip',
                  style:
                      normalText(color: ThemeColor.maincolor, fontSize: 20))),
          const SizedBox(height: 35),
        ]),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class profilePicture extends StatefulWidget {
//   const profilePicture({Key? key}) : super(key: key);

//   @override
//   _profilePictureState createState() => _profilePictureState();
// }

// class _profilePictureState extends State<profilePicture> {
//   File? _image;

//   final _picker = ImagePicker();
//   // Implementing the image picker
//   Future<void> _openImagePicker() async {
//     final XFile? pickedImage =
//         await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         _image = File(pickedImage.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Kindacode.com'),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(35),
//             child: Column(children: [
//               Center(
//                 child: ElevatedButton(
//                   child: const Text('Select An Image'),
//                   onPressed: _openImagePicker,
//                 ),
//               ),
//               const SizedBox(height: 35),
//               Container(
//                 alignment: Alignment.center,
//                 width: double.infinity,
//                 height: 300,
//                 color: Colors.grey[300],
//                 child: _image != null
//                     ? Image.file(_image!, fit: BoxFit.cover)
//                     : const Text('Please select an image'),
//               )
//             ]),
//           ),
//         ));
//   }
// }
