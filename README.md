This package to issue manage only mobile device height and width in PX.

## Features

You give easy to give height and width in give on figma file and other design file.

## Getting started

Step: 1
    MSizer wrap with MaterialApp.
Step: 2
    Use for height, ex. height=80.hPX
    Use for width, ex. width = 80.wPX

## Usage

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MSizer(
      builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: Scaffold(
            body: Center(
              child: Container(
                height: 48.hPX,
                width: 313.wPX,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}

