component
	output="false"
{
	property name="point" type="any";

	public Point function init(required numeric x, required numeric y)
		output="false"
	{
		var newPoint = createObject("java", "org.openqa.selenium.Point");
		newPoint.init(arguments.x, arguments.y);
		variables.point = newPoint;
		return this;
	}
	public boolean function isEqual(required any o)
		output="false"
	{
		return variables.point.equals(arguments.o);
	}
	public numeric function getX()
		output="false"
	{
		return variables.point.getX();
	}
	public numeric function getY()
		output="false"
	{
		return variables.point.getY();
	}
	public numeric function hashCode()
		output="false"
	{
		return variables.point.hashCode();
	}
	public void function move(required numeric newX, required numeric newY)
		output="false"
	{
		variables.point.move(arguments.newX, arguments.newY);
	}
	public cfWebDriver.Point function moveBy(required numeric xOffset, required numeric yOffset)
		output="false"
	{
		return new cfWebDriver.Point(variables.point.getX() + arguments.xOffset, variables.point.getY() + arguments.yOffset);
	}
	public string function toString()
		output="false"
	{
		return variables.point.toString();
	}
}