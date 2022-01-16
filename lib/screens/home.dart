import 'package:flutter/material.dart';
import 'package:mboa_waste/models/models.dart';
import 'package:mboa_waste/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mboawaste"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 120.0,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return CouncilBox(
                      council: Council(
                          name: "Yaounde 1",
                          image: "council.png",
                          mayor: "Mme LordBrook",
                          phone: "690535759",
                          localisation: "Nglonkak, Valee"),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
