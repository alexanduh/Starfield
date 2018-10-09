//your code here
NormalParticle[] particles;
void setup()
{
	particles = new NormalParticle[1000];
	for(int i = 0; i < particles.length; i++) {
		particles[i] = new NormalParticle();
	}
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
class NormalParticle
{
	double myAngle, mySpeed, myX, myY;
	NormalParticle() {
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = Math.random()*10;
		myX = 300;
		myY = 300;
	}

	void show() {
		fill(255);
		ellipse((float)myX, (float)myY, 15, 15);
	}

	void move() {
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

