component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		var system = CreateObject("java", "java.lang.System");
		system.setProperty("webdriver.chrome.driver","C:\\selenium\\chromedriver_x68_2.9\\chromedriver.exe");
		return createObject("java", "org.openqa.selenium.chrome.ChromeDriver");
	}
}
