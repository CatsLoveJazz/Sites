
int r = 250;
int r_center = 0.6*r;
float no_pct = 0.45;
float yes_pct = 1 - no_pct;
float no_angle_target = (no_pct*TWO_PI);
float yes_angle_target = (yes_pct*TWO_PI);
float no_angle;
float yes_angle;
int delay = 1500;
float dA_no = no_angle_target / delay;
float dA_yes = yes_angle_target / delay;
boolean STOP = false;
//PFont font;
int fs = 27;
boolean REDRAW_SKETCH = true;
WIDTH_SCALAR = 1;
HEIGHT_SCALAR = 0.5;
PIE_HEIGHT = 0.85;
CENTER_R = 0.6;

//Todo
// whcih ever is bigger, height or radius of pie chart


void setup() {
  size( WIDTH_SCALAR * $(window).width(), HEIGHT_SCALAR* $(window).height() );
  noStroke();
	//font = loadFont("SourceSansPro-Light.ttf");
  	//textFont(font,fs);
  	//textMode(SCREEN);
  	//textAlign(CENTER,CENTER);

	r = PIE_HEIGHT*height;
	r_center = CENTER_R*r;

	smooth();
}


void draw() {


	//Redraw

	  if (REDRAW_SKETCH == true) {
	  	t_start = millis();
	    REDRAW_SKETCH = false;
	  }

	t_since = millis() - t_start;

	background(255);

	  stroke(128);
  line(width / 4, 0, width / 4, height);
  line(width / 2, 0, width / 2, height);
  line(3 * width / 4, 0, 3 * width / 4, height);
  line(0, height / 4, width, height / 4);
  line(0, height / 2, width, height / 2);
  line(0, 3 * height / 4, width, 3 * height / 4);
  noStroke();



	translate(width/2, height/2);
	rotate(-HALF_PI);



	if (t_since< delay) {
		no_angle = t_since*dA_no;
		yes_angle = TWO_PI - t_since*dA_yes;
	} 
	else {
		// STOP = true;
		no_angle = no_angle_target;
		yes_angle = TWO_PI - yes_angle_target;
	}

	// Fill from clockwise
	fill(255, 0, 0);
	arc(0, 0, r, r, 0, no_angle );


	// Fille anti-clockwise
	fill(0, 0, 255);
	arc(0, 0, r, r, yes_angle, TWO_PI);


	//fill center
	fill(255);
	ellipse(0, 0, -r_center, r_center);

	// //TEXT
	// rotate(HALF_PI);
	// fill(0);
	// text("no",-width/2,-height/2,width,height);


	// if (STOP == true) {
	// 	noLoop();
	// }
}



// Javascript helpers
void resizeSketch() {
	println("YesOrNoPi RESIZE");
  	size( WIDTH_SCALAR * $(window).width(), HEIGHT_SCALAR* $(window).height() );
  	r = PIE_HEIGHT*height;
	r_center = CENTER_R*r;
  	REDRAW_SKETCH = true;
}

void SketchVisible(boolean visible) {
  if (visible == true) {
    println("Yes or no VISIBLE : " + millis() );
  	REDRAW_SKETCH = true;
    //loop();
  } else {
    println("YesorNo NOT VISIBLE");
    //noloop();
  }
}
