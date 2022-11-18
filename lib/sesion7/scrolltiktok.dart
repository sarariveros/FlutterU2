import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_3_1/sesion7/widget/plantillaPersonalizada.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTikTokWidget extends StatefulWidget {
  const ScrollTikTokWidget({super.key});

  @override
  State<ScrollTikTokWidget> createState() => _ScrollTikTokWidgetState();
}

class _ScrollTikTokWidgetState extends State<ScrollTikTokWidget> {
  late Controller controller;
  Controller? testingController;

  @override
  final List<dynamic> data = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2017/02/25/07/47/china-2097075_960_720.jpg',
      'title': 'LA GRAN MURALLA (CHINA)',
      'subtitle': 'Parte de la Gran Muralla China.EL MUNDO',
      'content':
          'Es algo más que una muralla para un país como China. Representa también su cultura y filosofía de vida hoy en día. Sirvió para defenderse de los mongoles y llegó a tener más de 20.000 kilómetros desde Corea al desierto de Gobi. Las primeras construcciones de la Gran Muralla China datan del siglo VII a.C. entre los que destaca el muro construido entre 220 y 206 a.C. por el primer emperador de China, Qin Shi Huang.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/03/26/22/15/petra-4971956_960_720.jpg',
      'title': 'PETRA (JORDANIA)',
      'subtitle': 'La fachada principal de Petra (Jordania)EM',
      'content':
          'Punto clave de paso de la Ruta de la Seda, se levantó en el reino Nabateao. Tras su abandono fue descubierta en 1812 por explorador suizo Johann Ludwig Burckhardt. Se compone de 1.500 metros de longitud con fecha del año 312 a.C. Petra fue nombrada por la revista Smithsonian como uno de los "28 lugares para ver antes de morir".'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/07/20/14/02/rome-3550739_960_720.jpg',
      'title': 'EL COLISEO (ITALIA)',
      'subtitle': 'El Coliseo de Roma (Italia)EM',
      'content':
          'Con capacidad para 65.000 espectadores, acogió luchas de gladiadores durante 500 años y se convirtió en el circo más grande entre todos los construidos en aquella época (año 72 d.C.). Ha sufrido importantes daños por terremotos y expolios, pero mantiene todo su esplendor como símbolo icónico de la Roma imperial. Es una de las atracciones turísticas más populares de Roma y también tiene vínculos con la Iglesia Católica Romana. Cada Viernes Santo el Papa encabeza una procesión del Vía Crucis por el Coliseo.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/11/08/01/01/mexico-1032966_960_720.jpg',
      'title': 'CHICHEN ITZA (MÉXICO)',
      'subtitle': 'El Chichen Itza en México',
      'content':
          'El Templo de Kukulcán es una pirámide escalonada mesoamericana que domina el centro del sitio arqueológico de Chichén Itzá en el estado mexicano de Yucatán. El edificio está designado más formalmente por los arqueólogos como Estructura 5B18 de Chichén Itzá. La pirámide tiene 91 escalones en cada uno de sus lados. Sumando todos ellos más el escalón final son 365 escalones, tantos como días tiene un año.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/01/13/17/48/machupicchu-1138641_960_720.jpg',
      'title': 'MACHU PICCHU (PERÚ)',
      'subtitle': 'El Machu Picchu en Perú.EM',
      'content':
          'El Machu Picchu fue construido como propiedad del emperador inca Pachacuti (1438-1472). A menudo denominada erróneamente como la "Ciudad Perdida de los Incas" y es todo un icono familiar de la civilización Inca. Fue declarado Santuario Histórico del Perú en 1981 y Patrimonio de la Humanidad por la UNESCO en 1983.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/01/31/21/25/brazil-4809011_960_720.jpg',
      'title': 'EL CRISTO REDENTOR (BRASIL)',
      'subtitle': 'El Cristo Redentor en Brasil.EM',
      'content':
          'Entre 1922 y 1931 se creó esta estatua art deco de Jesucristo en Río de Janeiro por el escultor polaco-francés Paul Landowski y los ingenieros Heitor da Silva Costa y Albert Caquo. La estatua pesa 635 toneladas y está ubicada en la cima de la montaña Corcovado en el Parque Nacional del Bosque de Tijuca. Símbolo del cristianismo en todo el mundo, la estatua también se ha convertido en un icono cultural tanto de Río de Janeiro como de Brasil.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/09/04/16/48/taj-mahal-3654227_960_720.jpg',
      'title': 'TAJ MAHAL (INDIA)',
      'subtitle': 'subtitle TAJ MAHAL',
      'content':
          'El Taj Mahal es un mausoleo de mármol blanco marfil en la orilla sur del río Yamuna en la ciudad de Agra (India). Fue encargado en 1632 por el emperador Shah Jahan para albergar la tumba de su esposa favorita, Mumtaz Mahal. La tumba es la pieza central de un complejo que incluye una mezquita y una casa de huéspedes. Su valor de construcción trasladado a hoy en día serían un 750 millones de euros.'
    }
  ];
  final List<dynamic> lugaresTuristicos = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/03/14/09/41/monastery-of-santa-catalina-4930129_960_720.jpg',
      'title': 'Monasterio de Santa Catalina',
      'content':
          'El Monasterio de Santa Catalina de Siena, o Convento de Santa Catalina, es un complejo turístico religioso ubicado en el centro histórico de Arequipa, departamento de Arequipa, Perú. '
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2019/09/18/04/49/plaza-de-armas-4485385_960_720.jpg',
      'title': 'Plaza de Armas de Arequipa',
      'content':
          'La plaza de Armas de Arequipa​ es uno de los principales espacios públicos de Arequipa y el lugar de fundación de la ciudad. Está ubicada en el Centro histórico de Arequipa, a su alrededor está la Catedral de Arequipa en el Norte, los Portales de Arequipa al este, sur y oeste, La Iglesia La Compañía al sur-este, La Iglesia Nuestra señora de la Merced al sur-oeste y en el centro de la plaza una pileta de bronce.'
    },
    {
      'img':
          'https://fulldays.net/wp-content/uploads/2018/10/Mirador-de-Yanahuara.jpg',
      'title': 'Mirador de Yanahuara',
      'content':
          'Desde su imponente altura, a más de 2300 metros sobre el nivel del mar, se domina, además, toda la ciudad, con su rompecabezas de callejuelas empedradas y construcciones coloniales.'
    },
  ];

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? curretIndex}) {
    print('object');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Turismo en Arequipa',
          style: GoogleFonts.lobster(fontSize: 35),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.greenAccent,
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: lugaresTuristicos.length,
        swipePositionThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 2000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 400),
        // ^ how long the animation will take
        controller: controller,
        builder: (BuildContext context, int index) {
          final sitios = lugaresTuristicos[index];
          return LugaresTuristicos(
            img: sitios['img'],
            title: sitios['title'],
            //subtittle: sitios['subtitle'],
            contenido: sitios['content'],
          );
        },
      ),
    );
  }
}
