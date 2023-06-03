import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  late String _nombre;
  late String _email;
  String? selectedOption;
  List<String> options = ['single', 'married', 'Divorced'];
  bool _isPasswordVisible = false;

  get flatButtonStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.green, Colors.yellow],
            begin: Alignment.topCenter,
          ),
        ), 
        child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Text(
            'FORM',
            style: TextStyle(fontFamily: 'cursiva', fontSize: 30.0),
          ),
          
          SizedBox(
              width: 160.0,
              height: 15.0,
              child: Divider(
                color: Colors.blueGrey[600],
              )),
          TextField(
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'USER-NAME',
                  labelText: 'user-name',
                  suffixIcon: Icon(Icons.verified_user),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              onSubmitted: (valor) {
                _nombre = valor;
                print('El correo es: $_nombre');
              }),
          Divider(
            height: 20.0,
          ),
          TextField(
              enableInteractiveSelection: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: 'Phone numer',
                  labelText: 'Phone numer',
                  suffixIcon: Icon(Icons.add_ic_call_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)))),
          Divider(
            height: 20.0,
          ),
          TextField(
              enableInteractiveSelection: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: 'Age',
                  labelText: 'Age',
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)))),
          Divider(
            height: 20.0,
          ),
          TextField(
              enableInteractiveSelection: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: 'Adress',
                  labelText: 'Adress',
                  helperText: 'Enter your address',
                  suffixIcon: Icon(Icons.add_home),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)))),
          Divider(
            height: 20.0,
          ),
          Text(
            'Civil Status:',
            style: TextStyle(fontFamily: 'cursiva', fontSize: 20.0),
          ), 
          DropdownButton<String>(
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue;
              });
            },
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text('Select an option'),
            isExpanded: true,
            underline: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                
                  hintText: 'Email',
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              onSubmitted: (valor) {
                _email = valor;
                print('El correo es: $_email');
              }),
          Divider(height: 20.0),
          TextField(
      enableInteractiveSelection: false,
      obscureText: !_isPasswordVisible, // Oculta o muestra la contraseña según el estado
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: IconButton(
          icon: _isPasswordVisible
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible; // Cambia el estado de visibilidad
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
          ),
          Container(
            margin: EdgeInsets.all(16), // Margen de 16 en todos los lados
            child: TextButton(
              onPressed: () {
                print('Button Pressed');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen, // Color de fondo del botón
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Borde redondeado del botón
                  side: BorderSide(
                      color: Colors.white, width: 1), // Borde del botón
                ),
                minimumSize:
                    Size(double.infinity, 50), // Ancho máximo y altura de 50
              ),
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  fontSize: 18, // Tamaño de fuente del texto
                  color: Colors.black, // Color del texto
                ),
              ),
            ),
          )
        ],
      ),
        )
        
    );
  }
}
