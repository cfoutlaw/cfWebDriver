component
	output="false"
{
	property name="capability" type="any";

	private void function setCapability(required any capability)
		output="false"
	{
		variables.capability = arguments.capability;
	}
	private any function getCapability()
		output="false"
	{
		return variables.capability;
	}
	public DesiredCapabilities function init()
		output="false"
	{
		setCapability(createObject("java", "org.openqa.selenium.remote.DesiredCapabilities"));
		return this;
	}
	public any function chrome()
		output="false"
	{
		return getCapability().chrome();
	}
	public any function internetExplorer()
		output="false"
	{
		return getCapability().internetExplorer();
	}
}