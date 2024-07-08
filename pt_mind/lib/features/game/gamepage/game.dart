import 'package:flame/game.dart';

import 'package:flame/components.dart';

// 게임 인스턴스 생성
class StartGame extends FlameGame {
  // 게임 인스턴스가 생성될때 실행하는 함수, 대부분 여기에 배치
  @override
  Future<void> onLoad() async {
    final AirplaneGameBg _ = AirplaneGameBg(); // 게임배경 컴포넌트 생성
    await add(_);

    super.onLoad();
  }

  // 업데이트 되는 매 프레임마다 실행되는 로직

  // 인스턴스가 해제될 떄 실행되는 로직
}

// 게임배경 컴포넌트 (SpriteComponent를 상속) HasGameRef를 Mixin
class AirplaneGameBg extends SpriteComponent with HasGameRef {
  @override
  Future<void> onLoad() async { // 게임배경 이미지 로드
    super.onLoad();

    sprite = await gameRef.loadSprite('game/back/forest1-1.png'); 
    size = Vector2(gameRef.size.x, gameRef.size.y);
  }
}
