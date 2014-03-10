component
	output="false"
{
	property name="alert" type="any";

	private void function setAlert(required any alert)
		output="false"
	{
		variables.alert = arguments.alert;
	}
	private any function getAlert()
		output="false"
	{
		return variables.alert;
	}
	public Alert function init(required any alert)
		output="false"
	{
		setAlert(arguments.alert);
		return this;
	}
	public void function accept()
		output="false"
	{
		getAlert().accept();
	}
	public void function authenticateUsing(required Credentials credentials)
		output="false"
	{
		throw("not yet implemented");
	}
	public void function dismiss()
		output="false"
	{
		getAlert().dismiss();
	}
	public string function getText()
		output="false"
	{
		return getAlert().getText();
	}
	public void function sendKeys(required string keysToSend)
		output="false"
	{
		getAlert().sendKeys(listToArray(arguments.keysToSend, ""));
	}
}