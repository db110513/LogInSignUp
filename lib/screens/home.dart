import 'exports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,

      home: (Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home', style: TextStyle(fontSize: 40)),
          backgroundColor: Colors.green[900],
        ),

        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/225/164/HD-wallpaper-neon-line-green-neon-beauty-'
                        'black-dark-destruction-glow-green-line-the-xiaomi.jpg'
                )
              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 208,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                    ),
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp())),
                    icon: const Icon(Icons.add),
                    label: const Text('SIGN UP', style: TextStyle(fontSize:30)),
                  ),
                ),
              ],
            ),
          ),
        ),

      ))

  );

}