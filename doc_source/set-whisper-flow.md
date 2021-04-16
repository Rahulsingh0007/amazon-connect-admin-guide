# Contact block: Set whisper flow<a name="set-whisper-flow"></a>

## Description<a name="set-whisper-description"></a>

A *whisper flow* is what a customer or agent experiences when they are joined in a voice or chat conversation\. For example:
+ An agent and customer are joined in a **chat**\. An agent whisper might display text to the agent telling them the name of the customer, for example, which queue the customer was in, or let the agent know they're talking to club member\.
+ An agent and customer are joined in a **call**\. A customer whisper might tell the customer that the call is being recorded for training purposes, for example, or thank them for being a club member\.
+ An agent and customer are joined in a **chat**\. Using a contact attribute, an agent whisper flow records which agent is being connected to the conversation\. This attribute is then used in a disconnect flow to route the contact back to the same agent if the customer has a follow\-up question after the agent disconnects\.

A whisper flow has the following characteristics:
+ It’s a one\-sided interaction: either the customer hears or sees it, or the agent does\.
+ It can be used to create personalized and automated interactions\.
+ It runs when a customer and agent are being connected\.

For voice conversations, the **Set whisper flow** block overrides the [default agent whisper flow](default-agent-whisper.md) or [customer whisper flow](default-customer-whisper.md) by linking to a whisper flow you create\.

**Important**  
For chat conversations, you need to include a **Set whisper flow** block for default agent or customer whispers to play\. For instructions, see [Set the default whisper flow for a chat conversation](set-default-whisper-flow-for-chat.md)\.

### How the Set whisper flow block works<a name="how-set-whisper-block-works"></a>
+ For inbound conversations \(voice or chat\), the **Set whisper flow** block specifies the whisper to be played to customer or the agent when they are joined\.
+ For outbound voice calls, it specifies the whisper to be played to customer\.
+ A whisper is one direction, which means only the agent or customer hears or sees it, depending on the type of whisper you selected\. For example, if a customer whisper says "This call is being recorded," the agent does not hear it\.
+ A whisper flow is triggered after the agent accepts the contact \(either auto\-accept or manual accept\)\. The agent whisper flow runs first, before the customer is taken out of queue\. After this is completed, the customer is taken out of queue and the customer whisper flow runs\. Both flows run to completion before the agent and customer can talk or chat with each other\. 
+  If an agent disconnects while the agent whisper is running, the customer remains in queue in order to be re\-routed to another agent\.
+  If a customer disconnects while the customer whisper is running, the contact ends\.
+ If an agent whisper flow or customer whisper flow includes a block that chat does not support, such as [Start](start-media-streaming.md)/[Stop](stop-media-streaming.md) media streaming or [Set voice](set-voice.md), chat skips these blocks and triggers an error branch\. However, it doesn't prevent the contact flow from progressing\.
+ Whisper flows don't appear in transcripts\.

## Contact flow types<a name="set-whisper-types"></a>

You can use this block in the following [contact flow types](create-contact-flow.md#contact-flow-types):
+ Inbound contact flow
+ Customer Queue flow
+ Transfer to Agent flow
+ Transfer to Queue flow

## Properties<a name="set-whisper-properties"></a>

![\[Image NOT FOUND\]](http://docs.aws.amazon.com/connect/latest/adminguide/images/set-whisper-flow-properties2.png)

If you choose to **Select a flow**, you can only select from flows that are type **Agent Whisper** or **Customer Whisper**\.

For information about using attributes, see [Use Amazon Connect contact attributes](connect-contact-attributes.md)\.

## Configuration tips<a name="set-whisper-tips"></a>
+ In a single block, you can set either a customer whisper or an agent whisper, but not both\. Instead, use multiple **Set whisper flow** blocks in your contact flow\.
+ If you use a [Play prompt](play.md) block instead of a **Set whisper** block in an agent whisper flow or customer whisper flow, in a voice conversation the prompt is audible to both the agent and the customer\. In a chat, however, only the agent or customer sees the **Play prompt** text\.

## Configured block<a name="set-whisper-configured"></a>

When this block is configured, it looks similar to the following image:

![\[Image NOT FOUND\]](http://docs.aws.amazon.com/connect/latest/adminguide/images/set-whisper-flow-configured.png)