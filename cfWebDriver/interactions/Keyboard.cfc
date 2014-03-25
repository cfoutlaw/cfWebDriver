component
	output="false"
{
	property name="javaKeyboard" type="any";

	public Keyboard function init(required any keyboard)
		output="false"
	{
		variables.Keyboard = arguments.keyboard;
		return this;
	}
	public void function pressKey(required string keyToPress)
		output="false"
	{
		variables.javaKeyboard.pressKey(listToArray(arguments.keyToPress, ""));
	}
	public void function releaseKey(required string keyToRelease)
		output="false"
	{
		variables.javaKeyboard.releaseKey(listToArray(arguments.keyToRelease, ""));
	}
	public void function sendKeys(required string keysToSend)
		output="false"
	{
		variables.javaKeyboard.sendKeys(listToArray(arguments.keysToSend, ""));
	}
}