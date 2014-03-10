component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		if (!structKeyExists(request, "ieDriver") || isNull(request.ieDriver.getSessionId())) {
			var system = CreateObject("java", "java.lang.System");
			system.setProperty("webdriver.ie.driver","C:\\selenium\\IEDriverServer_x86_2.40.0\\IEDriverServer.exe");
			request.ieDriver = createObject("java", "org.openqa.selenium.ie.InternetExplorerDriver");
		}
		return request.ieDriver;
	}
}
