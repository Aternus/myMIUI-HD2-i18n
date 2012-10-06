.class public Lcom/android/mms/ui/ComposeMessageRouterActivity;
.super Landroid/app/Activity;
.source "ComposeMessageRouterActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageRouterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->prepareIntent(Landroid/content/Intent;J)V

    .line 89
    return-object v0
.end method

.method private static prepareIntent(Landroid/content/Intent;J)V
    .locals 2
    .parameter "intent"
    .parameter "threadId"

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 94
    const-string v0, "view_conversation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v0, "thread_id"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    :cond_0
    return-void
.end method

.method public static route(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    const/4 v0, 0x0

    .line 36
    const-string v1, "view_conversation"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 38
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    move v0, v5

    .line 83
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-static {p0, v0, v1, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 57
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 58
    const-string v1, "routing: threadId=%d, messageCount=%d, recipientCount=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 71
    :cond_2
    const-class v0, Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 83
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    invoke-static {p0, v1, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_4
    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-static {v1, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto/16 :goto_1

    .line 61
    :cond_5
    const-string v1, "routing: conv=null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->prepareIntent(Landroid/content/Intent;J)V

    .line 74
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 75
    const-class v0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 77
    :cond_7
    const-class v0, Lcom/android/mms/ui/SingleRecipientConversationActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 28
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 30
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->finish()V

    .line 31
    return-void
.end method
