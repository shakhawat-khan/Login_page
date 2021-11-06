import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login() ,

    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login page'
        ),
        backgroundColor: Colors.green,
      ),

      body:const Body(),

    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

final  nameController = TextEditingController();
final  passwordController = TextEditingController();

class _BodyState extends State<Body> {


  final  emailController = TextEditingController();


  @override
  void initState()
  {
    super.initState();

    emailController.addListener(() => setState(() {

    }));

    nameController.addListener(() => setState(() {

    }));

    passwordController.addListener(() => setState(() {

    }));

  }



  @override
  Widget build(BuildContext context) {



    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Stack(

          children:  const <Widget> [

            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 0,0),
              child: Text('Hello',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 95, 0, 0),
              child: Text('There',
              style:TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ) ,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(195, 70, 60, 0),
              child: Text('.',
                style:TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                ) ,
              ),
            ),
          ],
        ),

        Expanded(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: buildEmail(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: buildName() ,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: buildpassword() ,
              ),
              Container(
                alignment:const Alignment(.8,0.0) ,
                padding: const EdgeInsets.only(top: 15.0,left: 20.0),
                child: const InkWell(
                  child: Text('Forget Password',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline

                    ),
                  ),
                ),

              ),
              const SizedBox(height: 40.0),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                height: 40,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.greenAccent,
                  color: Colors.green,
                  elevation: 5.0,
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: const Center(
                      child: Text('LOGIN',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),


                ),
              ),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                height: 40,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.white,
                  color: Colors.white,
                  elevation: 5.0,
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                    children: const <Widget> [

                      Icon(Icons.facebook_outlined),

                      Text('   Log In with facebook',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)

                    ],

                  ),



                ),
              ),
              ),

              const SizedBox(height: 25,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[

                  const Text("New to Spotify ?  ",style: TextStyle(
                    fontSize: 15,
                  ),),

                  InkWell(
                    onTap: (){},

                    child: const Text("Register",style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),),
                  )

                ],
              )



            ],
          ),
        ),

      ],
    );



  }



  Widget buildEmail()=>  TextField(



    keyboardType: TextInputType.emailAddress,
    controller: emailController,
    textInputAction: TextInputAction.done,

    decoration: InputDecoration(
      hintText: 'name@example.com',
      border: const OutlineInputBorder(),
      labelText: 'Email',
      labelStyle: const TextStyle(
        color: Colors.green
      ),
      prefixIcon: const Icon(Icons.mail,color: Colors.green,),
      suffixIcon: emailController.text.isEmpty
        ? Container(width: 0)
        : IconButton(onPressed: ()=> emailController.clear() , icon:const Icon(
        Icons.close
      )),



      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
    ),
  );
}

  Widget buildName()=>  TextField(
    keyboardType: TextInputType.name,
    controller: nameController,
    textInputAction: TextInputAction.done,

    decoration: InputDecoration(
      hintText: 'abc123',
      border: const OutlineInputBorder(),
      labelText: 'Username',
      labelStyle: const TextStyle(
          color: Colors.green
      ),
      prefixIcon: const Icon(Icons.supervised_user_circle,color: Colors.green,),
      suffixIcon: nameController.text.isEmpty
          ? Container(width: 0)
          : IconButton(onPressed: ()=> nameController.clear() , icon:const Icon(
          Icons.close
      )),



      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
    ),
  );

Widget buildpassword()=>  TextField(


  keyboardType: TextInputType.name,
  controller: passwordController,
  textInputAction: TextInputAction.done,

  decoration: InputDecoration(
    hintText: '******',
    border: const OutlineInputBorder(),
    labelText: 'Password',
    labelStyle: const TextStyle(
        color: Colors.green
    ),
    prefixIcon: const Icon(Icons.vpn_key_rounded,color: Colors.green,),
    suffixIcon: passwordController.text.isEmpty
        ? Container(width: 0)
        : IconButton(onPressed: ()=> passwordController.clear() , icon:const Icon(
        Icons.close
    )),



    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
  ),
);



