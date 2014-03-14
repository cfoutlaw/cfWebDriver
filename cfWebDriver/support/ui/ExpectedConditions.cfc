component
	output="false"
{
	private any function createCondition()
		output="false"
	{
		return createObject("java", "org.openqa.selenium.support.ui.ExpectedConditions");
	}
	private any function returnElement(condition)
		output="false"
	{
		return function(required any wait) { return new cfWebDriver.remote.RemoteWebElement(arguments.wait.until(condition)); };
	}
	public ExpectedConditions function alertIsPresent()
		output="false"
	{
	}
	public ExpectedConditions function elementSelectionStateToBeBy(By locator, boolean selected)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given element is selected.
	  */
	public ExpectedConditions function elementSelectionStateToBe(WebElement element, boolean selected)
		output="false"
	{
	}
	/**
	  * An expectation for checking an element is visible and enabled such that you can click it.
	  */
	public ExpectedConditions function elementToBeClickableBy(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking an element is visible and enabled such that you can click it.
	  */
	public ExpectedConditions function elementToBeClickable(WebElement element)
		output="false"
	{
	}
	public ExpectedConditions function elementToBeSelectedBy(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given element is selected.
	  */
	public ExpectedConditions function elementToBeSelected(WebElement element)
		output="false"
	{
	}
	/**
	  * An expectation for checking whether the given frame is available to switch to.
	  */
	public ExpectedConditions function frameToBeAvailableAndSwitchToItBy(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking whether the given frame is available to switch to.
	  */
	public ExpectedConditions function frameToBeAvailableAndSwitchToIt(java.lang.String frameLocator)
		output="false"
	{
	}
	/**
	  * An expectation for checking that an element is either invisible or not present on the DOM.
	  */
	public ExpectedConditions function invisibilityOfElementLocated(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking that an element with text is either invisible or not present on the DOM.
	  */
	public ExpectedConditions function invisibilityOfElementWithText(By locator, java.lang.String text)
		output="false"
	{
	}
	/**
	  * An expectation with the logical opposite condition of the given condition.
	  */
	public ExpectedConditions function _not(any condition)
		output="false"
	{
	}
	/**
	  * An expectation for checking that there is at least one element present on a web page.
	  */
	public ExpectedConditions function presenceOfAllElementsLocatedBy(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking that an element is present on the DOM of a page.
	  */
	public ExpectedConditions function presenceOfElementLocated(By locator)
		output="false"
	{
	}
	/**
	  * Wrapper for a condition, which allows for elements to update by redrawing.
	  */
	public ExpectedConditions function refreshed(any condition)
		output="false"
	{
	}
	/**
	  * Wait until an element is no longer attached to the DOM.
	  */
	public ExpectedConditions function stalenessOf(WebElement element)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given text is present in the specified element.
	  */
	public ExpectedConditions function textToBePresentInElement(WebElement element, java.lang.String text)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given text is present in the element that matches the given locator.
	  */
	public ExpectedConditions function textToBePresentInElementLocated(By locator, java.lang.String text)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given text is present in the specified elements value attribute.
	  */
	public ExpectedConditions function textToBePresentInElementValueBy(By locator, java.lang.String text)
		output="false"
	{
	}
	/**
	  * An expectation for checking if the given text is present in the specified elements value attribute.
	  */
	public ExpectedConditions function textToBePresentInElementValue(WebElement element, java.lang.String text)
		output="false"
	{
	}
	/**
	  * An expectation for checking that the title contains a case-sensitive substring
	  */
	public ExpectedConditions function titleContains(java.lang.String title)
		output="false"
	{
	}
	/**
	  * An expectation for checking the title of a page.
	  */
	public ExpectedConditions function titleIs(java.lang.String title)
		output="false"
	{
	}
	/**
	  * An expectation for checking that an element, known to be present on the DOM of a page, is visible.
	  */
	public ExpectedConditions function visibilityOf(WebElement element)
		output="false"
	{
	}
	/**
	  * An expectation for checking that all elements present on the web page that match the locator are visible.
	  */
	public ExpectedConditions function visibilityOfAllElements(any elements)
		output="false"
	{
	}
	/**
	  * An expectation for checking that all elements present on the web page that match the locator are visible.
	  */
	public ExpectedConditions function visibilityOfAllElementsLocatedBy(By locator)
		output="false"
	{
	}
	/**
	  * An expectation for checking that an element is present on the DOM of a page and visible.
	  */
	public function function visibilityOfElementLocated(required any locator)
		output="false"
	{
		return returnElement(createCondition().visibilityOfElementLocated(arguments.locator));
	}
}