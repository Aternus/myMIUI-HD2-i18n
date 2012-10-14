.class public Lcom/android/contacts/ShortcutRouterActivity;
.super Landroid/app/Activity;
.source "ShortcutRouterActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public callOrSendSms(Landroid/content/Context;JZZ)Z
    .locals 7
    .parameter "context"
    .parameter "contactId"
    .parameter "sendSms"
    .parameter "ignorePrimary"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "data1"

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, phone:Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, phonesCursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/android/contacts/ContactsUtils;->queryPhoneNumbers(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    move v3, v4

    .line 113
    :goto_0
    return v3

    .line 73
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    move v3, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 79
    const-string v3, "data1"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 93
    new-instance v1, Lcom/android/contacts/ui/DisambigChooseDialog;

    invoke-direct {v1, p1, v2, p4}, Lcom/android/contacts/ui/DisambigChooseDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 94
    .local v1, phoneDialog:Lcom/android/contacts/ui/DisambigChooseDialog;
    new-instance v3, Lcom/android/contacts/ShortcutRouterActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/ShortcutRouterActivity$1;-><init>(Lcom/android/contacts/ShortcutRouterActivity;)V

    invoke-virtual {v1, v3}, Lcom/android/contacts/ui/DisambigChooseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    invoke-virtual {v1}, Lcom/android/contacts/ui/DisambigChooseDialog;->show()V

    .line 110
    .end local v1           #phoneDialog:Lcom/android/contacts/ui/DisambigChooseDialog;
    :goto_2
    if-eqz v2, :cond_3

    .line 111
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move v3, v5

    .line 113
    goto :goto_0

    .line 80
    :cond_4
    if-nez p5, :cond_2

    .line 81
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 82
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const-string v3, "is_super_primary"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 85
    const-string v3, "data1"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    goto :goto_1

    .line 102
    :cond_6
    if-eqz p4, :cond_7

    .line 103
    invoke-static {p1, v0}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 107
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    goto :goto_2

    .line 105
    :cond_7
    invoke-static {p1, v0}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    const-string v1, "pref_click_shortcut"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 32
    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    .line 59
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move-object v1, p0

    move v5, v4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ShortcutRouterActivity;->callOrSendSms(Landroid/content/Context;JZZ)Z

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ViewContactActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/ShortcutRouterActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/ShortcutRouterActivity;->finish()V

    goto :goto_0

    .line 42
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 44
    const/high16 v0, 0x1420

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v1, "exclude_mimes"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 51
    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
