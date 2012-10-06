.class public Lcom/android/contacts/ContactsSearchManager;
.super Ljava/lang/Object;
.source "ContactsSearchManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "initialQuery"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    .local v2, originalIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    .local v1, originalExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    :cond_0
    const-string v3, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v3, "originalAction"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "originalComponent"

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method public static startSearch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "initialQuery"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->buildIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public static startSearchForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "initialQuery"
    .parameter "requestCode"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->buildIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
