component
	output="false"
{
	property name="javaMouse" type="any";

	public Mouse function init(required any mouse)
		output="false"
	{
		variables.javaMouse = arguments.mouse;
		return this;
	}
	public void function click(required any where)
		output="false"
	{
		variables.javaMouse.click(arguments.where);
	}
	public void function contextClick(required any where)
		output="false"
	{
		variables.javaMouse.contextClick(arguments.where);
	}
	public void function doubleClick(required any where)
		output="false"
	{
		variables.javaMouse.doubleClick(arguments.where);
	}
	public void function mouseDown(required any where)
		output="false"
	{
		variables.javaMouse.mouseDown(arguments.where);
	}
	public void function mouseMove(required any where)
		output="false"
	{
		variables.javaMouse.mouseMove(arguments.where);
	}
	public void function mouseMoveOffset(required any where, required numeric xOffset, required numeric yOffset)
		output="false"
	{
		variables.javaMouse.mouseMove(arguments.where, arguments.xOffset, arguments.yOffset);
	}
	public void function mouseUp(required any where)
		output="false"
	{
		variables.javaMouse.mouseUp(arguments.where);
	}
}