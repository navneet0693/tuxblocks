package tuxkids.tuxblocks.core.solve.blocks.n.sprite;

import playn.core.Layer;
import playn.core.util.Clock;
import tuxkids.tuxblocks.core.PlayNObject;

public abstract class Sprite extends PlayNObject {
	
	protected static int baseSize() {
		return 100;
	}
	
	protected static int modSize() {
		return 40;
	}
	
	protected static int wrapSize() {
		return 8;
	}
	
	protected static float lerpBase() {
		return 0.992f;
	}
	
	public abstract Layer layer();
	public abstract float width();
	public abstract float height();
	
	public float x() {
		return layer().tx();
	}
	
	public float y() {
		return layer().ty();
	}
	
	public float top() {
		return y();
	}
	
	public float left() {
		return x();
	}
	
	public float right() {
		return x() + width();
	}
	
	public float bottom() {
		return y() + height();
	}
	
	public float centerX() {
		return x() + width() / 2;
	}
	
	public float centerY() {
		return y() + height() / 2;
	}
	
	public boolean contains(float x, float y) {
		return x >= left() && x <= right() && y >= top() && y <= bottom(); 
	}
	
	public abstract void update(int delta);
	public abstract void paint(Clock clock);
}