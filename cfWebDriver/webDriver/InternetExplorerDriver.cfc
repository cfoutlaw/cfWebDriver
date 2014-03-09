component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		var system = CreateObject("java", "java.lang.System");
		system.setProperty("webdriver.ie.driver","C:\\selenium\\IEDriverServer_x86_2.40.0\\IEDriverServer.exe");
		return createObject("java", "org.openqa.selenium.ie.InternetExplorerDriver");
	}
}
