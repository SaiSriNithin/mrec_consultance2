import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'About us',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // Image.asset('assets/images/MR Centre logo-.jpg')
            Container(
              clipBehavior: Clip.hardEdge,
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: const Image(
                image: AssetImage("assets/images/MR Centre logo-.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            children: [
              Text(
                'M.R. Geo and Environmental Consultancy Services Private Limited',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'is a registered company formed under Indian Companies Act 2013,'
                ' which is a sister concern of Malla Reddy Engineering College, located in the premises of Malla Reddy Engineering College,at Survey Nos. 592 &amp; 593, Maisammaguda, R.R. District, Hyderabad, 500 100 (Corporate Identity Number of the Company U82990TS2024PTC180794).',
              ),
              Text(
                'Need of the Hour for Consultancy Services in Mineral Exploration',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                  'Earlier only governmental agencies like Geological Survey of India (GSI), Mineral Exploration'
                  'Corporation Ltd. (MECL) and State Departments of Mines and Geology were engaged in such'
                  'mineral investigations. India is lagging in mineral investigations, when compared with other'
                  'countries, for various reasons.\n'
                  'Considering various factors, GOI has come up with a proposal to grant exploratory'
                  'licenses for the mineral investigation agencies to identify deep-seated mineral resources in the'
                  'country. This policy change emphasizes the requirement of large number of mineral'
                  'investigation agencies in the country.\n'
                  'Mineral investigations involve geological mapping, geophysical surveys, exploratory'
                  'drilling, chemical analysis, mineral beneficiation studies etc. It is a multi-level study involving'
                  'the geologists, geo-physicists, mining engineers, geo-chemists etc.\n'
                  'The scientific man power with vast experience in the field is available plenty for such'
                  'jobs but they are mostly retired officers. These retired scientists can contribute unequivocally'
                  'their expertise for such investigations and capable of preparing standard technical reports,'
                  'which can stand for scrutiny on any platform.\n'
                  'Considering the need for institutional consultancy services in the fields mentioned above,'
                  'the Management of MREC has floated a separate company namely, M.R. Geo and'
                  'Environmental Consultancy Services Private Limited, with the following objectives:\n'
                  '1. To carry on the business of undertaking collectively any work in the field of mineral'
                  'investigation, hydrological projects, preparation of mining plans, environmental'
                  'assessment and preparation of environmental reports, generation of mineral'
                  'beneficiation reports, pilot plant studies, remote sensing application, land use/land'
                  'cover studies, mineral marketing, feasibility studies for the establishment of'
                  'industries, all types services including drone surveys etc.\n'
                  '2. To develop consultancy services in the field of mining, concentrating, smelting,'
                  'refining and act as consulting engineers and metallurgists in all fields of engineering'
                  'and metallurgy.\n'
                  '3. To undertake, carry on, or cause to be carried on, and assist, contribute in any form,'
                  'research in all fields of metallurgy and engineering in India as mentioned in the'
                  'Memorandum of Association\n'
                  '4. To search, survey, discover and find out and the acquire by concession, grant,'
                  'purchase, barter, lease, license, degrees &amp; tenders the allotment or otherwise of land or'
                  'water area from government, semi-government, local authorities, private bodies,'
                  'corporations and other persons, such rights, powers, and privileges whatsoever for'
                  'obtaining mines, open cast mines, bucket mines, quarries, deposits, etc. for the'
                  'accomplishment of the above objects.'),
              Text(
                'Joint Venture Agreement',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                  'M.R. Geo and Environmental Consultancy Services Private Limited, has entered in to a'
                  'joint venture agreement with “Consortium of Geo Scientists”, a society formed among the'
                  'group of geoscientists (vide Regd. No. 344/2023 of Registrar of Societies, registered under'
                  'Telangana Societies Registration Act 2001), with its registered office at 6-1-1059, Flat No. 405'
                  'Taj Enclave Apartment, Khairatabad, Hyderabad. The consortium consists of very'
                  'experienced, retired from top professional organizations, who are experts in the field of'
                  'geologists, geophysicists, chemists, mining engineers, environmentalists, geospatial'
                  'technologists, water resources experts etc.'),
            ],
          ),
        ),
      ),
    );
  }
}
