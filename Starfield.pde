//your code here
Particle[] particles;
void setup()
{
	particles = new Particle[500];
	for(int i = 0; i < particles.length; i++) {
		particles[i] = new NormalParticle();
	}
	particles[0] = new JumboParticle();
	particles[1] = new OddballParticle();
	size(600, 600);
}
void draw()
{
	background(0);
	for(int i = 0; i < particles.length; i++) {
		particles[i].show();
		particles[i].move();
	}
}

void mousePressed(){
	particles = new Particle[500];
	for(int i = 0; i < particles.length; i++) {
		particles[i] = new NormalParticle();
	}
	particles[0] = new JumboParticle();
	particles[1] = new OddballParticle();
}

class NormalParticle implements Particle
{
	double myAngle, mySpeed, myX, myY;
	NormalParticle() {
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = Math.random()*10;
		myX = 300;
		myY = 300;
	}

	public void show() {
		fill(255);
		ellipse((float)myX, (float)myY, 15, 15);
	}

	public void move() {
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double  myX, myY;
	OddballParticle() {
		myX = 300;
		myY = 300;
	}

	public void show() {
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		ellipse((float)myX, (float)myY, 15, 15);
	}

	public void move() {
 		myX = myX + (int)(Math.random()*15 - 7.5);
 		myY = myY + (int)(Math.random()*15 - 7.5);
	}
		
}
class JumboParticle extends NormalParticle
{
	public void show() {
		fill(0, 0, 155);
		ellipse((float)myX, (float)myY, 40, 40);
	}
}



