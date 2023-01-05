const positionFromRect = '''
Positioned.fromRect(
  rect: Rect.fromCenter(
    center: Offset(sw / 2, 50),
    width: 200,
    height: 100,
  ),
  child: const BorderedRectangle()
)''';


const positionFromRectCircle = '''
Positioned.fromRect(
  rect: Rect.fromCenter(
    center: Offset(sw / 2, sh / 2),
    width: sw / 4,
    height: sw / 4,
  ),
  child: const BorderedCircle()
)''';

const animatedPositionedFromRectCircle = '''
AnimatedPositioned.fromRect(
  duration: const Duration(seconds: 2),
  rect: Rect.fromCenter(
    center: Offset(sw / 2, sh / 2),
    width: sw / 4,
    height: sw / 4,
  ),
  child: const BorderedCircle(width: 5)
)''';

const animatedPositionedFromRectCircle2 = '''
AnimatedPositioned.fromRect(
  duration: const Duration(seconds: 2),
  rect: Rect.fromCenter(
    center: Offset(sw / 3, sh / 3),
    width: sw / 4,
    height: sw / 4,
  ),
  child: const BorderedCircle(width: 5)
)''';

const offsetChange = '''
Offset(sw/2, sh/2) => Offset(sw/3, sh/3)''';