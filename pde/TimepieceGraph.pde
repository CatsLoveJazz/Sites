int num = 185;
float radius = 70;
//float[] ydata1 = new float[num];
//float[] ydata2 = new float[num];
int[] trans1 = new int[num];
int[] trans2 = new int[num];
//Pct
float ydata1[] = {50.0,50.9,81.2,56.8,31.4,68.0,64.0,48.1,40.0,76.2,45.1,56.2,58.0,74.6,11.1,10.6,71.4,57.7,79.1,66.9,44.4,62.4,59.9,68.7,20.9,72.0,64.0,80.6,73.9,31.8,82.2,74.3,73.3,42.4,51.7,61.1,42.5,55.9,64.8,49.0,22.4,56.4,49.0,62.7,65.6,39.5,53.9,41.0,36.2,47.7,32.7,52.3,33.6,55.1,36.4,50.8,52.1,67.9,70.7,75.3,66.7,53.9,88.6,56.8,56.8,62.2,48.1,62.3,76.1,40.5,84.8,69.6,92.2,63.5,79.3,42.3,35.3,44.8,78.9,90.0,50.5,47.6,56.2,66.7,47.6,55.6,45.9,44.1,73.6,80.4,65.1,74.6,83.2,36.8,56.7,67.9,37.2,50.5,49.7,62.5,66.7,49.1,84.1,55.7,55.9,53.3,62.0,42.4,59.6,48.8,9.8,66.2,63.2,60.0,84.9,32.4,43.1,41.9,69.8,63.3,47.0,54.6,59.4,74.8,80.9,61.5,79.9,56.5,35.9,36.1,70.2,50.7,73.3,90.3,65.2,57.1,74.7,74.5,76.6,67.9,61.4,68.8,73.5,72.9,37.1,32.5,72.6,46.6,33.9,47.2,35.8,41.2,61.0,22.9,61.5,58.3,92.9,56.8,45.6,35.4,64.5,78.2,52.6,20.4,66.8,36.4,39.7,38.8,57.5};
float ydata2[] = {50.0,49.1,18.8,43.2,68.6,32.0,36.0,51.9,60.0,23.8,54.9,43.8,42.0,25.4,88.9,89.4,28.6,42.3,20.9,33.1,55.6,37.6,40.1,31.3,79.1,28.0,36.0,19.4,26.1,68.2,17.8,25.7,26.7,57.6,48.3,38.9,57.5,44.1,35.2,51.0,77.6,43.6,51.0,37.3,34.4,60.5,46.1,59.0,63.8,52.3,67.3,47.7,66.4,44.9,63.6,49.2,47.9,32.1,29.3,24.7,33.3,46.1,11.4,43.2,43.2,37.8,51.9,37.7,23.9,59.5,15.2,30.4,7.8,36.5,20.7,57.7,64.7,55.2,21.1,10.0,49.5,52.4,43.8,33.3,52.4,44.4,54.1,55.9,26.4,19.6,34.9,25.4,16.8,63.2,43.3,32.1,62.8,49.5,50.3,37.5,33.3,50.9,15.9,44.3,44.1,46.7,38.0,57.6,40.4,51.3,90.2,33.8,36.8,40.0,15.1,67.6,56.9,58.1,30.2,36.7,53.0,45.4,40.6,25.2,19.1,38.5,20.1,43.5,64.1,63.9,29.8,49.3,26.7,9.7,34.8,42.9,25.3,25.5,23.4,32.1,38.6,31.2,26.5,27.1,62.9,67.5,27.4,53.4,66.1,52.8,64.2,58.8,39.0,77.1,38.5,41.7,7.1,43.2,54.4,64.6,35.5,21.8,47.4,79.6,33.2,63.6,60.3,61.2,42.5};
//Abs
//float ydata1[] = {41, 59, 82, 67, 50, 316, 55, 88, 4, 115, 37, 446, 51, 206, 2, 27, 185, 172, 117, 103, 28, 179, 97, 46, 14, 149, 126, 100, 65, 35, 125, 107, 74, 56, 195, 96, 135, 62, 129, 49, 61, 88, 72, 131, 124, 159, 48, 41, 75, 113, 113, 46, 43, 168, 68, 31, 85, 180, 193, 284, 2, 62, 195, 84, 121, 140, 63, 134, 83, 77, 178, 64, 106, 73, 107, 152, 152, 43, 56, 9, 51, 156, 91, 38, 49, 5, 45, 113, 173, 45, 71, 91, 154, 7, 17, 91, 45, 95, 82, 5, 72, 85, 37, 39, 52, 88, 62, 28, 198, 39, 5, 86, 134, 75, 163, 56, 140, 49, 97, 81, 39, 59, 380, 95, 38, 144, 115, 52, 213, 30, 40, 148, 96, 196, 808, 104, 56, 222, 72, 95, 312, 86, 114, 97, 36, 78, 410, 48, 37, 93, 24, 47, 332, 32, 80, 144, 144, 46, 241, 51, 78, 197, 41, 31, 346, 39, 69, 59, 266};
//float ydata2[] = {41, 57, 19, 51, 109, 149, 31, 95, 6, 36, 45, 347, 37, 70, 16, 227, 74, 126, 31, 51, 35, 108, 65, 21, 53, 58, 71, 24, 23, 75, 27, 37, 27, 76, 182, 61, 183, 49, 70, 51, 211, 68, 75, 78, 65, 244, 41, 59, 132, 124, 233, 42, 85, 137, 119, 30, 78, 85, 80, 93, 1, 53, 25, 64, 92, 85, 68, 81, 26, 113, 32, 28, 9, 42, 28, 207, 278, 53, 15, 1, 50, 172, 71, 19, 54, 4, 53, 143, 62, 11, 38, 31, 31, 12, 13, 43, 76, 93, 83, 3, 36, 88, 7, 31, 41, 77, 38, 38, 134, 41, 46, 44, 78, 50, 29, 117, 185, 68, 42, 47, 44, 49, 260, 32, 9, 90, 29, 40, 381, 53, 17, 144, 35, 21, 431, 78, 19, 76, 22, 45, 196, 39, 41, 36, 61, 162, 155, 55, 72, 104, 43, 67, 212, 108, 50, 103, 11, 35, 287, 93, 43, 55, 37, 121, 172, 68, 105, 93, 197};
num = ydata1.length;
//println(num);

PFont font;
Calendar calendar;
color bgcolor  = 50;


void setup() {

    size(550, 550);

    ellipseMode(CENTER);
    smooth();

    calendar = new Calendar(18, 3, 2, 9);

    float t1 = 0;
    float dt1 = 0.03;
    float t2 = 0;
    float dt2 = 0.04;


    for (int i = 0; i < num; i++) {
        t1 += dt1;
        t2 += dt2;
        //ydata1[i] = 250 * noise(t1) * random(0.8, 1);
        //ydata2[i] = 200 * noise(t2) * random(0.8, 1);
        ydata1[i] *= 1.5;
        ydata2[i] *= 1.5;
        trans1[i] = round(random(50, 150));
        trans2[i] = round(random(50, 150));
    }

    float w = 0.8;
    for (int i = 1; i < num; i++) {
        ydata1[i] = w * ydata1[i] + (1 - w) * ydata1[i - 1];
        ydata2[i] = w * ydata2[i] + (1 - w) * ydata2[i - 1];
    }



    // font = createFont("Helvetica", 22, true);
    // font = loadFont("Tahoma-48.vlw");
    font = loadFont("SourceSansPro-Light.ttf");
    textFont(font);
    textMode(SCREEN);
    noStroke();
}



void draw() {

    background(bgcolor);

    translate(width / 2, height / 2);

    fill(bgcolor);


    plotTimeGraph(ydata1, radius, color(0, 100, 255), trans1, calendar.getRotationPos());
    plotTimeGraph(ydata2, radius, color(255, 50, 50), trans2, calendar.getRotationPos());

    //plotTimeGraphBoth(ydata1, color(0, 100, 255), trans1,
    // ydata2, color(255, 50, 50), trans2,
    // radius, calendar.getRotationPos());


    // Start line @ 0degrees
    stroke(255);
    strokeWeight(1);
    line(0, -radius, 0, -200);
    noFill();
    arc(0, 0, 400, 400, -HALF_PI, -HALF_PI / 2);

    // Center of ellipse
    stroke(bgcolor);
    strokeWeight(4);
    ellipse(0, 0, 2 * radius, 2 * radius); // ticker circle

    //  plotEvent(radians(30), "Osbourne rejects the pound");
    //  plotEvent(radians(120), "Merkel is a man");
    //  plotEvent(radians(190), "The SNP is run by fish");
    //  plotEvent(radians(300), "Scotland detaches and sails to Norway");

    drawTicker();
    plotMarkers();
}

// Functions
void plotTimeGraph(float[] ydata, float radius, color c, int[] trans, int pos) {

    stroke(c);
    strokeWeight(4);
    color col;
    color highlight = color(255, 230, 100);
    int t;
    float drad = TWO_PI / (ydata.length);
    pushMatrix();
    // plot
    for (int i = 0; i < ydata.length; i++) {
        if (i == pos) {
            //col = highlight;
            col = c;
            t = 255;
        } else {
            col = c;
            t = trans[i];
        }
        stroke(col, t);
        line(0, -radius, 0, -radius - ydata[i]);
        rotate(drad);
    }
    popMatrix();
}



void plotTimeGraphBoth(float[] ydata1, color c1, int[] trans1,
                       float[] ydata2, color c2, int[] trans2,
                       float radius, int pos) {

    N = ydata1.length;

    strokeWeight(4);
    color col1, col2;
    color highlight = color(255, 230, 100);

    float drad = TWO_PI / (ydata1.length);
    pushMatrix();
    // plot
    for (int i = 0; i < N; i++) {

        col1 = c1;
        col2 = c2;
        if (i == pos) {
            col1 = highlight;
            col2 = highlight;
        }

        if (ydata1[i] >= ydata2[i]) {
            stroke(col1, trans1[i]);
            line(0, -radius, 0, -radius - ydata1[i]);
            stroke(col2, trans2[i]);
            line(0, -radius, 0, -radius - ydata2[i]);
        } else {
            stroke(col2, trans2[i]);
            line(0, -radius, 0, -radius - ydata2[i]);
            stroke(col1, trans1[i]);
            line(0, -radius, 0, -radius - ydata1[i]);
        }
        rotate(drad);
    }
    popMatrix();
}


void drawTicker() {

    float angle = calendar.getTickerAngle();
    angle = -1 * (angle + PI);

    int lineX = (int)(radius * sin(angle));
    int lineY = (int)(radius * cos(angle));
    int xoffset =  (int)((3 * radius / 4) * sin(angle));
    int yoffset =  (int)((3 * radius / 4) * cos(angle));

    strokeWeight(2);
    stroke(255);
    line(xoffset, yoffset, lineX, lineY);

    fill(255);
    textAlign(CENTER, CENTER);
    rectMode(CORNERS);
    textFont(font, 18);
    text(calendar.getDate( calendar.getRotationPos() ), -radius, -radius - 9, 2 * radius, 2 * radius);
}


void plotEvent(float angle, String msg) {
    int dx = 250;
    strokeWeight(1);
    stroke(255);

    pushMatrix();
    rotate(angle - PI / 2);
    line(radius - 20, 0, radius + dx, 0); // event line

    rectMode(CORNERS);
    textFont(font, 14);

    if (angle <= PI) {
        textAlign(RIGHT, BOTTOM);
        fill(0);
        text(msg, radius, 0, radius + dx, -25); //Stop anti-aliasing alpha from building up
        fill(255);
        text(msg, radius, 0, radius + dx, -25);
    } else {
        rotate(PI);
        textAlign(LEFT, BOTTOM);
        fill(0);
        text(msg, radius, 0, -radius - dx, -25);
        fill(255);
        text(msg, radius, 0, -radius - dx, -25);
    }
    popMatrix();
}



void plotMarkers() {

    strokeWeight(1);
    stroke(200, 100);
    int n = 32;
    float dz = 10;

    float angle = TWO_PI / n;
    pushMatrix();
    for (int i = 0; i < n; i++) {
        if ((i % 8) == 0) {
            dz = 20;
        } else {
            dz = 10;
        }
        line(radius, 0, radius - dz, 0); // event line
        rotate(angle);
    }
    popMatrix();
}

class Calendar {

    //Variables
    final String[] Months = {
        "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    };
    int[] Days = {
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    };

    int startDay;
    int startMonth;
    int endDay;
    int endMonth;
    int totalDays = 0;
    float dAngle;
    ArrayList<String> CalendarMap = new ArrayList<String>();


    //Constructor
    Calendar(int _startDay, int _startMonth, int _endDay, int _endMonth) {
        startDay = _startDay;
        startMonth = _startMonth;
        endDay = _endDay;
        endMonth = _endMonth;
        int cur_startDay = startDay;
        int cur_endDay;

        //Get total days and split by 2PI
        for (int i = startMonth; i <= endMonth; i++) {
            // Get month end
            if  (i == endMonth) {
                cur_endDay = endDay;
            } else {
                cur_endDay = Days[i + 1];
            }
            for (int j = cur_startDay; j <= cur_endDay; j++) {
                totalDays++;
                // println("total: " + totalDays + ", month: ", Months[i-1] + ", day: " + j);
                CalendarMap.add( j + " " + Months[i - 1]);
            }
            cur_startDay = 1;
        }

        //Set delta angle
        dAngle = TWO_PI / totalDays;
    };


    float getTickerAngle() {
        int dx = mouseX - width / 2;
        int dy = mouseY - height / 2;
        float angle =  atan2(dx, dy);
        angle = -1 * (angle - PI);
        return angle;
    }

    int getRotationPos() {
        int pos = (int)(floor(getTickerAngle() / dAngle));
        return pos;
    }

    String getDate(float angle) {
        return CalendarMap.get(getRotationPos());
    }
};
