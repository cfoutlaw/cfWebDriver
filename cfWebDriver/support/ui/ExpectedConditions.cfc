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
	private any function returnElementArray(condition)
		output="false"
	{
		return function(required any wait) {
			var elements = [];
			var webElements = arguments.wait.until(condition);
			for (var i=1;i<=arrayLen(webElements);i++) {
				arrayAppend(elements, new cfWebDriver.remote.RemoteWebElement(webElements[i]));
			}
			return elements;
		};
	}
	private any function returnPrimative(condition)
		output="false"
	{
		return function(required any wait) { return arguments.wait.until(condition); };
	}
	public function function alertIsPresent()
		output="false"
	{
		var condition = createCondition().alertIsPresent();
		return function(required any wait) { return new cfWebDriver.Alert(arguments.wait.until(condition)); };
	}
	public function function elementSelectionStateToBeBy(required any locator, required boolean selected)
		output="false"
	{
		return returnPrimative(createCondition().elementSelectionStateToBe(arguments.locator, arguments.selected));
	}
	/**
	  * An expectation for checking if the given element is selected.
	  */
	public function function elementSelectionStateToBe(required cfWebDriver.remote.RemoteWebElement element,
													   required boolean selected)
		output="false"
	{
		return returnPrimative(createCondition().elementSelectionStateToBe(arguments.element.getElement(), arguments.selected));
	}
	/**
	  * An expectation for checking an element is visible and enabled such that you can click it.
	  */
	public function function elementToBeClickableBy(required any locator)
		output="false"
	{
		return returnElement(createCondition().elementToBeClickable(arguments.locator));
	}
	/**
	  * An expectation for checking an element is visible and enabled such that you can click it.
	  */
	public function function elementToBeClickable(required cfWebDriver.remote.RemoteWebElement element)
		output="false"
	{
		return returnElement(createCondition().elementToBeClickable(arguments.element.getElement()));
	}
	public function function elementToBeSelectedBy(required any locator)
		output="false"
	{
		return returnPrimative(createCondition().elementToBeSelected(arguments.locator));
	}
	/**
	  * An expectation for checking if the given element is selected.
	  */
	public function function elementToBeSelected(required cfWebDriver.remote.RemoteWebElement element)
		output="false"
	{
		return returnPrimative(createCondition().elementToBeSelected(arguments.element.getElement()));
	}
	/**
	  * An expectation for checking whether the given frame is available to switch to.
	  */
	public function function frameToBeAvailableAndSwitchToItBy(required any locator)
		output="false"
	{
		return function(required any wait) { arguments.wait.until(createCondition().frameToBeAvailableAndSwitchToIt(locator)); };
	}
	/**
	  * An expectation for checking whether the given frame is available to switch to.
	  */
	public function function frameToBeAvailableAndSwitchToIt(required string frameLocator)
		output="false"
	{
		return function(required any wait) { arguments.wait.until(createCondition().frameToBeAvailableAndSwitchToIt(frameLocator)); };
	}
	/**
	  * An expectation for checking that an element is either invisible or not present on the DOM.
	  */
	public function function invisibilityOfElementLocated(required any locator)
		output="false"
	{
		return returnPrimative(createCondition().invisibilityOfElementLocated(arguments.locator));
	}
	/**
	  * An expectation for checking that an element with text is either invisible or not present on the DOM.
	  */
	public function function invisibilityOfElementWithText(required any locator, required string text)
		output="false"
	{
		return returnPrimative(createCondition().invisibilityOfElementWithText(arguments.locator, arguments.text));
	}
	/**
	  * An expectation with the logical opposite condition of the given condition.
	  */
	public function function _not(any condition)
		output="false"
	{
	}
	/**
	  * An expectation for checking that there is at least one element present on a web page.
	  */
	public function function presenceOfAllElementsLocatedBy(required any locator)
		output="false"
	{
		return returnElementArray(createCondition().presenceOfAllElementsLocatedBy(arguments.locator));
	}
	/**
	  * An expectation for checking that an element is present on the DOM of a page.
	  */
	public function function presenceOfElementLocated(required any locator)
		output="false"
	{
		return returnElement(createCondition().presenceOfElementLocated(arguments.locator));
	}
	/**
	  * Wrapper for a condition, which allows for elements to update by redrawing.
	  */
	public function function refreshed(any condition)
		output="false"
	{
	}
	/**
	  * Wait until an element is no longer attached to the DOM.
	  */
	public function function stalenessOf(required cfWebDriver.remote.RemoteWebElement element)
		output="false"
	{
		return returnPrimative(createCondition().stalenessOf(arguments.element.getElement()));
	}
	/**
	  * An expectation for checking if the given text is present in the specified element.
	  */
	public function function textToBePresentInElement(required cfWebDriver.remote.RemoteWebElement element, required string text)
		output="false"
	{
		return returnPrimative(createCondition().textToBePresentInElement(arguments.element.getElement(), arguments.text));
	}
	/**
	  * An expectation for checking if the given text is present in the element that matches the given locator.
	  */
	public function function textToBePresentInElementLocated(required any locator, required string text)
		output="false"
	{
		return returnPrimative(createCondition().textToBePresentInElementLocated(arguments.locator, arguments.text));
	}
	/**
	  * An expectation for checking if the given text is present in the specified elements value attribute.
	  */
	public function function textToBePresentInElementValueBy(required any locator, required string text)
		output="false"
	{
		return returnPrimative(createCondition().textToBePresentInElementValue(arguments.locator, arguments.text));
	}
	/**
	  * An expectation for checking if the given text is present in the specified elements value attribute.
	  */
	public function function textToBePresentInElementValue(required cfWebDriver.remote.RemoteWebElement element, required string text)
		output="false"
	{
		return returnPrimative(createCondition().textToBePresentInElementValue(arguments.element.getElement(), arguments.text));
	}
	/**
	  * An expectation for checking that the title contains a case-sensitive substring
	  */
	public function function titleContains(required string title)
		output="false"
	{
		return returnPrimative(createCondition().titleContains(arguments.title));
	}
	/**
	  * An expectation for checking the title of a page.
	  */
	public function function titleIs(required string title)
		output="false"
	{
		return returnPrimative(createCondition().titleIs(arguments.title));
	}
	/**
	  * An expectation for checking that an element, known to be present on the DOM of a page, is visible.
	  */
	public function function visibilityOf(required cfWebDriver.remote.RemoteWebElement element)
		output="false"
	{
		return returnElement(createCondition().visibilityOf(arguments.element.getElement()));
	}
	/**
	  * An expectation for checking that all elements present on the web page that match the locator are visible.
	  */
	public function function visibilityOfAllElements(any elements)
		output="false"
	{
	}
	/**
	  * An expectation for checking that all elements present on the web page that match the locator are visible.
	  */
	public function function visibilityOfAllElementsLocatedBy(required any locator)
		output="false"
	{
		return returnElementArray(createCondition().visibilityOfAllElementsLocatedBy(arguments.locator));
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