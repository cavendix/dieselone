part of 'pages.dart';

class Soal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SOAL 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }

    Widget hasil() {
      return Container(
        color: Colors.grey,
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.only(top: 10, right: 30, left: 30),
      );
    }

    Widget content() {
      return Container(
          margin: EdgeInsets.only(top: 10, right: 30, left: 30),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                'Input Parameter : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Masukkan parameter',
                  ),
                ),
              ),
            ],
          ));
    }

    Widget prosesButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, right: 30, left: 30),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Proses',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              hasil(),
              content(),
              prosesButton(),
            ],
          ),
        ),
      )),
    );
  }
}
