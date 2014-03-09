component
	output="false"
{
	property name="javaBy" type="any";

	public By function init()
		output="false"
	{
		variables.javaBy = createObject("java", "org.openqa.selenium.By");
		return this;
	}
	public any function className(required string className)
		outout="false"
	{
		return variables.javaBy.className(arguments.className);
	}
	public any function cssSelector(required string selector)
		outout="false"
	{
		return variables.javaBy.cssSelector(arguments.selector);
	}
	public numeric function hashCode()
		outout="false"
	{
		return variables.javaBy.hashCode();
	}
	public any function id(required string id)
		outout="false"
	{
		return variables.javaBy.id(arguments.id);
	}
	public any function linkText(required string linkText)
		outout="false"
	{
		return variables.javaBy.linkText(arguments.linkText);
	}
	public any function name(required string name)
		outout="false"
	{
		return variables.javaBy.name(arguments.name);
	}
	public any function partialLinkText(required string linkText)
		outout="false"
	{
		return variables.javaBy.partialLinkText(arguments.linkText);
	}
	public any function tagName(required string name)
		outout="false"
	{
		return variables.javaBy.tagName(arguments.tagName);
	}
	public string function toString()
		outout="false"
	{
		return variables.javaBy.toString();
	}
	public any function xpath(required string xpathExpression)
		outout="false"
	{
		return variables.javaBy.xpath(arguments.xpath);
	}
}