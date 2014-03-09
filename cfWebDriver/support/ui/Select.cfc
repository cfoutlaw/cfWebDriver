component
	accessors="true"
	output="false"
{
	property name="element" type="any";

	public Select function init(required cfWebDriver.remote.RemoteWebElement element)
		output="false"
	{
		var select = createObject("java", "org.openqa.selenium.support.ui.Select");
		select.init(arguments.element.getElement());
		setElement(select);
		return this;
	}
	public void function deselectAll()
		output="false"
	{
	}
	public void function deselectByIndex(required numeric index)
		output="false"
	{
	}
	public void function deselectByValue(required string value)
		output="false"
	{
	}
	public void function deselectByVisibleText(required string value)
		output="false"
	{
	}
	public any function getAllSelectedOptions()
		output="false"
	{
	}
	public any function getFirstSelectedOption()
		output="false"
	{
		return getElement().getFirstSelectedOption();
	}
	public array function getOptionValues()
		output="false"
	{
		var result = [];
		var options = getOptions();
		for (var i=1;i<=arrayLen(options);i++) {
			arrayAppend(result, options[i].getText());
		}
		return result;
	}
	public any function getOptions()
		output="false"
	{
		return getElement().getOptions();
	}
	public boolean function isMultiple()
		output="false"
	{
	}
	public void function selectByIndex(required numeric index)
		output="false"
	{
	}
	public void function selectByValue(required string value)
		output="false"
	{
	}
	public void function selectByVisibleText(required string value)
		output="false"
	{
		getElement().selectByVisibleText(arguments.value);
	}
}