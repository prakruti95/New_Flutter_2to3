import 'dart:io';
import 'package:data/test.dart';
import 'package:flutter/material.dart';

void main()
{
  // Run the appropriate app based on the platform
  if (Platform.isIOS)
  {
    runApp(PGVCLAppMaterial());

  }
  else
  {
    runApp(PGVCLAppCupertino());
  }
}

