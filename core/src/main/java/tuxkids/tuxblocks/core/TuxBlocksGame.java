package tuxkids.tuxblocks.core;

import static playn.core.PlayN.currentTime;
import static playn.core.PlayN.graphics;
import playn.core.Canvas;
import playn.core.CanvasImage;
import playn.core.Color;
import playn.core.Game;
import playn.core.ImageLayer;
import playn.core.TextFormat;
import playn.core.Font.Style;
import playn.core.TextLayout;
import playn.core.util.Clock;
import tripleplay.game.ScreenStack;
import tripleplay.ui.Background;
import tuxkids.tuxblocks.core.defense.DefenseScreen;
import tuxkids.tuxblocks.core.screen.FadeTransition;
import tuxkids.tuxblocks.core.solve.SolveScreen;
import tuxkids.tuxblocks.core.solve.expression.Equation;
import tuxkids.tuxblocks.core.solve.expression.EquationGenerator;
import tuxkids.tuxblocks.core.solve.expression.Number;
import tuxkids.tuxblocks.core.solve.expression.Variable;
import tuxkids.tuxblocks.core.utils.Debug;

public class TuxBlocksGame extends Game.Default {

	public static final int UPDATE_RATE = 1000 / 30;
	
	protected final SolidClock clock = new SolidClock(UPDATE_RATE);
	//protected final Clock.Source clock = new Clock.Source(UPDATE_RATE);

    protected final ScreenStack screens = new ScreenStack() {
//        @Override protected void handleError (RuntimeException error) {
//            log().warn("Screen failure", error);
//        }
        @Override public Transition defaultPushTransition () {
//        	return fade;
            return slide();
        }
        @Override public Transition defaultPopTransition () {
            //return new FadeTransition(screens); 
            return slide().right();
        }
    };
    
	private static TuxBlocksGame instance;
	
	private GameBackgroundSprite background;
	
	public static int screenDepth() {
		return instance.screens.size();
	}
	
	public TuxBlocksGame() {
		super(UPDATE_RATE);
		instance = this;
	}

	@Override
	public void init() {	
//		TextFormat format = new TextFormat().withFont(graphics().createFont("Arial", Style.PLAIN, 20));
//		TextLayout layout = graphics().layoutText("(", format);
//		Debug.write("%f %f %f %f", layout.ascent(), layout.descent(), layout.height(), layout.width());
//		Equation eq = EquationGenerator.generate(4);
//		Debug.write(eq.toMathString());
//		screens.push(new SolveScene(screens, eq));
		
		GameState state = new GameState();
		background = state.background();
		background.layer().setDepth(-10);
		
		graphics().rootLayer().add(background.layer());
		screens.push(new DefenseScreen(screens, state));
		
//		screens.push(new TestScreen(screens, state));
		
	}
	
	private int frames;
	private double lastUpdate;
	private ImageLayer fpsLayer;
	private void updateFPS() {
		frames++;
		if (lastUpdate < currentTime() - 1000) {
			lastUpdate = currentTime();
			CanvasImage image = graphics().createImage(40, 13);
			Canvas canvas = image.canvas();
			canvas.setFillColor(Color.rgb(50, 50, 50));
			canvas.drawText(frames + " FPS", 0, image.height());
			if (fpsLayer != null) 
				graphics().rootLayer().remove(fpsLayer);
			fpsLayer =  graphics().createImageLayer(image);
			fpsLayer.setDepth(10000);
			graphics().rootLayer().add(fpsLayer);
			frames = 0;
		}
	}

	@Override
	public void update(int delta) {
		background.update(delta);
		clock.update(delta);
        screens.update(delta);
	}

	@Override
	public void paint(float alpha) {
		background.paint(clock);
		clock.paint(alpha);
        screens.paint(clock);
		updateFPS();
	}
}
