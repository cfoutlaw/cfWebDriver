component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		if (!structKeyExists(request, "chromeDriver") || isNull(request.chromeDriver.getSessionId())) {
			var system = CreateObject("java", "java.lang.System");
			system.setProperty("webdriver.chrome.driver","C:\\selenium\\chromedriver_x68_2.9\\chromedriver.exe");
			request.chromeDriver = createObject("java", "org.openqa.selenium.chrome.ChromeDriver");
		}
		return request.chromeDriver;
	}
}
