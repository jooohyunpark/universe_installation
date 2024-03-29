class CenterMover {
  float x, y, r;
  PVector pos, vel, acc;

  CenterMover(float _x, float _y) {
    x = _x;
    y = _y;
    pos = new PVector(_x, _y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    vel.limit(2);
    acc.mult(0);
  }

  void applyForce(PVector f) {
    acc.add(f);
  }

  void edges() {
    if (pos.x < w / 2 - 250) {
      vel.x *= -1;
      pos.x = w / 2 - 250;
    }
    if (pos.x > w / 2 + 250) {
      vel.x *= -1;
      pos.x = w / 2 + 250;
    }
    if (pos.y < h / 2 - 100) {
      vel.y *= -1;
      pos.y = h / 2 - 100;
    }
    if (pos.y > h / 2 + 100) {
      vel.y *= -1;
      pos.y = h / 2 + 100;
    }
  }
}
