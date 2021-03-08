import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'email_password_screen.dart';

class CreditCardScreen extends StatefulWidget {
  CreditCardScreen({Key key}) : super(key: key);

  @override
  _CreditCardScreenState createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  bool _manSelected = true;
  bool _girlSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child:
              SvgPicture.asset('assets/Logo.svg', semanticsLabel: 'BOLDO Logo'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(17.0),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                    ),
                    Text("Tarjetas de Crédito o Débito",
                        style: boldoHeadingTextStyle.copyWith(fontSize: 20)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Nombre",
                  style: boldoHeadingTextStyle.copyWith(fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              const TextField(),
              const SizedBox(
                height: 20,
              ),
              Text("Número de la tarjeta",
                  style: boldoHeadingTextStyle.copyWith(fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.credit_card_sharp)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Fecha de expiración",
                  style: boldoHeadingTextStyle.copyWith(fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(suffixIcon: Icon(Icons.date_range)),
              ),
              const SizedBox(height: 20),
              Text("CVV", style: boldoHeadingTextStyle.copyWith(fontSize: 15)),
              const SizedBox(
                height: 10,
              ),
              const TextField(),
              const SizedBox(height: 20),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.add_circle_outline,
                      color: Constants.extraColor300,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Agregar método de pago',
                      style: boldoSubTextStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              settings:
                                  const RouteSettings(name: "/register_email"),
                              builder: (context) => EmailPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text("Registrar"),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Constants.extraColor100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              settings:
                                  const RouteSettings(name: "/register_email"),
                              builder: (context) => EmailPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Cancelar",
                          style: boldoHeadingTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}