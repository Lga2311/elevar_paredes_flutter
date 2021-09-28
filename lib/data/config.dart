class AlvData {
  final int larg;
  final int comp;
  final int nFiadas;
  final String layer;

  const AlvData({
    required this.larg,
    required this.comp,
    required this.nFiadas,
    required this.layer,
  });
}

const alvConfig = [
  AlvData(larg: 14, comp: 40, nFiadas: 14, layer: 'PAR04'),
  AlvData(larg: 14, comp: 40, nFiadas: 11, layer: 'PAR03'),
  AlvData(larg: 14, comp: 40, nFiadas: 06, layer: 'PAR02'),
  AlvData(larg: 14, comp: 40, nFiadas: 13, layer: 'PAR01'),
];

class EsqData {
  final int larg;
  final int alt;
  final int peioril;
  final String layer;

  const EsqData({
    required this.larg,
    required this.alt,
    required this.peioril,
    required this.layer,
  });
}

const esqConfig = [
  EsqData(
    larg: 21,
    alt: 21,
    peioril: 20,
    layer: 'ESQ09',
  ),
  EsqData(
    larg: 121,
    alt: 101,
    peioril: 120,
    layer: 'ESQ08',
  ),
  EsqData(
    larg: 91,
    alt: 221,
    peioril: 0,
    layer: 'ESQ07',
  ),
  EsqData(
    larg: 201,
    alt: 121,
    peioril: 100,
    layer: 'ESQ06',
  ),
  EsqData(
    larg: 81,
    alt: 101,
    peioril: 0,
    layer: 'ESQ05',
  ),
  EsqData(
    larg: 61,
    alt: 81,
    peioril: 140,
    layer: 'ESQ04',
  ),
  EsqData(
    larg: 161,
    alt: 221,
    peioril: 0,
    layer: 'ESQ03',
  ),
  EsqData(
    larg: 112,
    alt: 221,
    peioril: 0,
    layer: 'ESQ02',
  ),
  EsqData(
    larg: 121,
    alt: 121,
    peioril: 100,
    layer: 'ESQ01',
  ),
];

class GrouteData {
  final int bit;
  final int comp;
  final String name;
  final String layer;

  const GrouteData({
    required this.bit,
    required this.comp,
    required this.name,
    required this.layer,
  });
}

const grouteConfig = [
  GrouteData(
    bit: 10,
    comp: 100,
    name: 'N4',
    layer: 'GROUTE04',
  ),
  GrouteData(
    bit: 10,
    comp: 155,
    name: 'N3',
    layer: 'GROUTE03',
  ),
  GrouteData(
    bit: 10,
    comp: 330,
    name: 'N1 & N2',
    layer: 'GROUTE02',
  ),
  GrouteData(
    bit: 10,
    comp: 340,
    name: 'N1 & N2',
    layer: 'GROUTE01',
  ),
];

class CanaletaData {
  final int dobra;
  final int angulo;
  final String tipo;
  final String layer;

  const CanaletaData({
    required this.dobra,
    required this.angulo,
    required this.tipo,
    required this.layer,
  });
}

const canaletaConfig = [
  CanaletaData(dobra: 30, angulo: 45, tipo: 'C', layer: 'PAR04'),
  CanaletaData(dobra: 20, angulo: 90, tipo: 'V', layer: 'PAR03'),
  CanaletaData(dobra: 20, angulo: 90, tipo: 'V', layer: 'PAR02'),
  CanaletaData(dobra: 30, angulo: 45, tipo: 'C', layer: 'PAR01'),
];

class LajeData {
  final int h;
  final int nFiadas;
  final String tipo;
  final String layer;

  const LajeData({
    required this.h,
    required this.nFiadas,
    required this.tipo,
    required this.layer,
  });
}

const lajeConfig = [
  LajeData(h: 12, nFiadas: 14, tipo: 'C', layer: 'PAR04'),
  LajeData(h: 52, nFiadas: 11, tipo: 'V', layer: 'PAR03'),
  LajeData(h: 40, nFiadas: 6, tipo: 'V', layer: 'PAR02'),
  LajeData(h: 12, nFiadas: 13, tipo: 'C', layer: 'PAR01'),
];
