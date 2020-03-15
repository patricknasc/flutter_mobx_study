# mobx_study

Every commit is a step towards MobX mastery

## Getting Started


For Steps 1 and 2, we are not using mobx_codegen nor build_runner as dev dependencies yet. Therefore, to run the project you just need the usual command:

**> flutter run

For Steps 3 and beyond, you need to generate the ***.g.dart** file. To do so, you may choose one of the following options:

* After each and every change to update the ***.g.dart** file:

**> flutter pub run build_runner build 

* Only once, to automatically update the ***.g.dart** files:

**> flutter pub run build_runner watch 

* Or installing the **mobxcodegen** extension for VSCode to automate the aplication of the command above.


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Main reference: Flutterando step by step tutorial ](https://www.youtube.com/watch?v=oa-_cSdGIbE&list=TLPQMTUwMzIwMjDm9PqsSTHd1w&index=3)


For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
