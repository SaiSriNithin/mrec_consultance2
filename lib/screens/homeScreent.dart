import 'package:flutter/material.dart';
import 'package:mrec_consultance/screens/info_screen.dart';
import 'package:mrec_consultance/widgets/home_button.dart';
import 'package:mrec_consultance/models/tests_model.dart';
//import 'package:mrec_consultance/screens/test_screens/tests_screen.dart';

class AllTestScreen extends StatefulWidget {
  const AllTestScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AllTestScreenState();
}

class _AllTestScreenState extends State<AllTestScreen> {
  @override
  Widget build(BuildContext context) {
    List<Total> ex = [
      Total(
          Name: 'GeoPhysical Investigations',
          Tests: [
            TestModel(Name: "Gravity Method", Subtext: "Subtext"),
            TestModel(
                Name: "Electrical Resistivity Method", Subtext: "Subtext"),
            TestModel(Name: "Seismic Refraction Method", Subtext: "Subtext"),
            TestModel(Name: "Radio Active Method", Subtext: "Subtext"),
            TestModel(Name: "Geo Thermal Method", Subtext: "Subtext"),
            TestModel(Name: "Magnetic Method", Subtext: "Subtext"),
          ],
          AssetPath: "assets/images/geophysical.png"),
      Total(
          Name: 'Remote sensing and GIS',
          Tests: [],
          AssetPath: 'assets/images/remotesensing.jpg'),
      Total(
          Name: 'Environmental impact assessment',
          Tests: [],
          AssetPath:
              'assets/images/Environmental impact studies investigations.jpg'),
      Total(
          Name: 'Geological investigations',
          Tests: [],
          AssetPath: 'assets/images/Geological investigations.jpeg'),
      Total(
          Name: 'Mineral exploration',
          Tests: [],
          AssetPath: 'assets/images/Mineral exploration.jpeg'),
      Total(
          Name: 'Deep seated mineral deposite',
          Tests: [],
          AssetPath: 'assets/images/Deep seeded mineral deposite.jpg'),
      Total(
          Name: 'Geological maps preparation',
          Tests: [],
          AssetPath: 'assets/images/Geological maps preparation.jpeg'),
      Total(
          Name: 'Water resource managment',
          Tests: [],
          AssetPath: 'assets/images/Water resource managment.jpeg'),
      Total(
          Name: 'Mine plant Preparation',
          Tests: [],
          AssetPath: 'assets/images/Mine plant Preparation.jpeg'),
      Total(
          Name: 'Technical report',
          Tests: [],
          AssetPath: 'assets/images/Technical report preparation.jpeg'),
      Total(
          Name: 'Water quality Analysis',
          Tests: [],
          AssetPath: 'assets/images/Water quality Analysis.jpeg'),
      Total(
        Name: "Test on Steel",
        AssetPath: "assets/images/steel.jpg",
        Tests: [
          TestModel(Name: "Tension Test on HYSD bars", Subtext: "demo"),
          TestModel(Name: 'Shear Test on Steel bars', Subtext: 'demo'),
          TestModel(Name: 'Torsion Test on Shafts', Subtext: 'demo'),
        ],
      ),
      Total(
        Name: "Test on Cement & Concrete",
        AssetPath: "assets/images/cement.webp",
        Tests: [
          TestModel(Name: "Vicat Apparatus Test", Subtext: "demo"),
          TestModel(Name: 'Soundness Test On cement', Subtext: 'demo'),
          TestModel(Name: 'Specific Gravity Test on Cement', Subtext: 'demo'),
          TestModel(Name: 'Compressive Test on Cement', Subtext: 'demo'),
          TestModel(Name: 'Fineness Modulus of Cement', Subtext: 'demo'),
          TestModel(Name: 'Workablity Test on fresh Concrete', Subtext: 'demo'),
          TestModel(Name: 'Compression on Concrete Cubes', Subtext: 'demo'),
          TestModel(
              Name: 'Split Tensile test on Concrete Cylinders',
              Subtext: 'demo'),
          TestModel(
              Name: 'Flexural Strength test on Concrete Beams',
              Subtext: 'demo'),
        ],
      ),
      Total(
          Name: 'Geo Techinical Investigations',
          Tests: [
            TestModel(
                Name: "Specific Gravity on Soil Sample", Subtext: "Subtext"),
            TestModel(Name: 'Free Swell Index of Soil Sample', Subtext: 'demo'),
            TestModel(Name: 'Moisture Content of Soil Sample', Subtext: 'demo'),
            TestModel(
                Name: 'Liquid Limit and Plastic Limit of Soil Sample',
                Subtext: 'demo'),
            TestModel(Name: 'Grain Size Distribution of soil', Subtext: 'demo'),
            TestModel(Name: 'Core cutter Method', Subtext: 'demo'),
            TestModel(Name: 'Sand Replacement Method', Subtext: 'demo'),
            TestModel(Name: 'Standard Proctor Test', Subtext: 'demo'),
            TestModel(Name: 'Direct Shear Test', Subtext: 'demo'),
            TestModel(Name: 'Tri-Shear Compression Test', Subtext: 'demo'),
            TestModel(Name: 'Consolidation Test', Subtext: 'demo'),
            TestModel(
                Name: 'California Bearing Ratio Test (CBR)', Subtext: 'demo'),
            TestModel(Name: 'Permeability Test', Subtext: 'demo'),
            TestModel(Name: 'Un Confined Compression Test', Subtext: 'demo'),
            TestModel(Name: 'Settlement Analysis of sample', Subtext: 'demo'),
            TestModel(Name: 'Suitability of soil', Subtext: 'demo'),
          ],
          AssetPath: "assets/images/geotechnical.jpeg"),
      Total(
          Name: 'Non-Destructive Testing',
          Tests: [
            TestModel(Name: "Rebound Hammer Test", Subtext: "Subtext"),
            TestModel(
                Name: "Ultrasonic Pulse Velocity Test", Subtext: "Subtext"),
            TestModel(Name: "Penetration Test", Subtext: "Subtext"),
            TestModel(Name: "Radio Active Test", Subtext: "Subtext"),
            TestModel(Name: "Pull Out Test", Subtext: "Subtext"),
          ],
          AssetPath: "assets/images/NDT-test-on-concrete.webp"),
      Total(
          Name: 'Test on Environment',
          Tests: [
            TestModel(Name: "Soil pH Test", Subtext: "Subtext"),
            TestModel(Name: "Water pH Test", Subtext: "Subtext"),
            TestModel(Name: "Turbidity Test", Subtext: "Subtext"),
            TestModel(Name: "BOD Test", Subtext: "Subtext"),
            TestModel(
                Name: "Optimum Coagulant Dosage Test (Jar Test)",
                Subtext: "Subtext"),
            TestModel(Name: "Alkalinity Test", Subtext: "Subtext"),
            TestModel(Name: "Hardness Test", Subtext: "Subtext"),
            TestModel(Name: "Dissolved Oxygen Test", Subtext: "Subtext"),
            TestModel(Name: "Chlorine Demand Test", Subtext: "Subtext"),
            TestModel(Name: "Coil-form Test", Subtext: "Subtext"),
          ],
          AssetPath: "assets/images/environment.jpg"),
      Total(
          Name: 'Test on Transportation',
          Tests: [
            TestModel(Name: "Impact Test on Aggergates", Subtext: "Subtext"),
            TestModel(Name: "Crushing Test on Aggregates", Subtext: "Subtext"),
            TestModel(
                Name: "Specific Gravity of Aggregates", Subtext: "Subtext"),
            TestModel(
                Name: "Los angels Abrasion Test on Aggregates",
                Subtext: "Subtext"),
            TestModel(
                Name: "Devals Attrition Test on Aggregates",
                Subtext: "Subtext"),
            TestModel(
                Name: "Penetration Test On Bituminous", Subtext: "Subtext"),
            TestModel(Name: "Ductility Test On Bituminous", Subtext: "Subtext"),
            TestModel(
                Name: "Softening point Test On Bituminous", Subtext: "Subtext"),
            TestModel(
                Name: "Flash and Fire point Test On Bituminous",
                Subtext: "Subtext"),
            TestModel(Name: "Viscosity Test On Bituminous", Subtext: "Subtext"),
            TestModel(Name: "Bitumen Extraction Test", Subtext: "Subtext"),
            TestModel(Name: "Traffic volume Study", Subtext: "Subtext"),
            TestModel(Name: "CBR Test of Roads", Subtext: "Subtext"),
          ],
          AssetPath: "assets/images/transport.jpg"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        toolbarHeight: MediaQuery.of(context).size.height / 9,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Hi,user", style: TextStyle(fontSize: 25)),
                  Text("welcome", style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoScreen()),
                      );
                    },
                    icon: const Icon(Icons.info_outline),
                    iconSize: 30,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: const Image(
                      image: AssetImage("assets/images/MR Centre logo-.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        leadingWidth: double.infinity,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 3 / 2.5,
                ),
                itemCount: ex.length,
                itemBuilder: (context, index) => HomeButton(
                  assetspath: ex[index].AssetPath,
                  imgName: ex[index].Name,
                  // functionpg: TestScreen(
                  //   tests: ex[index].Tests,
                  //   testscreenName: ex[index].Name,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
