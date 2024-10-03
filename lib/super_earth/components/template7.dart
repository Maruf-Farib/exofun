import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Template7 extends StatefulWidget {
  final String customTitleText;
  final String text;
  final String gif;
  final Widget nextWidget;

  const Template7(
      {super.key,
      required this.text,
      required this.gif,
      this.customTitleText = '',
      required this.nextWidget});

  @override
  State<Template7> createState() => _Template5State();
}

class _Template5State extends State<Template7> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String titleText = 'Super Earth Introduction';
    if (widget.customTitleText != '') {
      titleText = widget.customTitleText;
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleContainer(text: titleText),
              Container(
                height: 250,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0x00000000),
                              Color(0xFF24CACA),
                            ],
                            stops: [0.0214, 0.958],
                          ),
                          color: Color(0xFF091522),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, -4),
                              blurRadius: 16,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                            ),
                            child: Center(
                              child: Text(
                                widget.text,
                                style: GoogleFonts.istokWeb(
                                    fontSize: 18, color: Colors.white),
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 250,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // child: Image.asset(
                        //   image,
                        //   fit: BoxFit.contain,
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GifView.asset(widget.gif),
                            InkWell(
                              child: Button1(
                                text: 'Example',
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return widget.nextWidget;
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: InkWell(
                  child: Button1(text: 'Back'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
