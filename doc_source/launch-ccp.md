# Launch the CCP<a name="launch-ccp"></a>

The URL to launch the CCP is:
+ https://*instance name*\.awsapps\.com/connect/ccp\-v2/

Where *instance name* is provided by your IT department or whoever set up Amazon Connect for your business\.

**Note**  
IT administrators: In the future, the access URL is going to change\. For the release schedule and technical details, see [Upcoming change: Domain for new Amazon Connect instances is "my\.connect\.aws"New domain for access URL](amazon-connect-release-notes.md#new-domain)\. 

With this updated CCP, your agents can manage voice, chat, and tasks from this single interface\.

As the administrator, you can also launch the CCP directly from the Amazon Connect console\. Just choose the phone icon in the upper right corner\.

To provide agents the ability to launch the CCP from their desktop and start handling contacts, there are a few things you need to do: 
+ Add agents as users to the instance\. For more information, see [Manage users in Amazon Connect](manage-users.md)\.
+ Configure permissions for the agents\. By default, agents assigned to the Agent security profile can access the CCP and make outbound calls\. But you can create a custom security profile and add additional permissions\. For more information, see [Security profiles](connect-security-profiles.md)\.
+ Give agents the URL the CCP\.
+ Provide agents with their user name and password so that they can log in to the CCP\.

We recommend telling agents to bookmark the URL to the CCP for more convenient access\.

Agents can use the CCP with a softphone on their computer, or a deskphone\. If they're using a softphone, they must use Chrome or Firefox for their web browser\. For more information, see [Grant microphone access in Chrome or Firefox](amazon-connect-contact-control-panel.md#accessing-microphone)\. 