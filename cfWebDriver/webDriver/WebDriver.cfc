component
	extends="cfWebDriver.remote.RemoteWebDriver"
	output="false"
{
	public void function startChrome()
		output="false"
	{
		setDriver(new cfWebDriver.webDriver.ChromeDriver());
	}
	public void function startInternetExplorer()
		output="false"
	{
		setDriver(new cfWebDriver.webDriver.InternetExplorerDriver());
	}
}
