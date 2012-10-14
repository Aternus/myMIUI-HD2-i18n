.class public final Lcom/android/contacts/ui/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;


# instance fields
.field private mQuickContact:Lcom/android/contacts/ui/QuickContactWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/QuickContactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method public onDismiss(Lcom/android/contacts/ui/QuickContactWindow;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/QuickContactActivity;->moveTaskToBack(Z)Z

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    iget-object v7, p0, Lcom/android/contacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/contacts/ui/QuickContactWindow;

    if-eqz v7, :cond_1

    .line 66
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 68
    .local v2, lookupUri:Landroid/net/Uri;
    const-string v7, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 70
    .local v4, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/ui/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    .end local v4           #rawContactId:J
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 77
    .local v6, target:Landroid/graphics/Rect;
    const-string v7, "mode"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 78
    .local v3, mode:I
    const-string v7, "exclude_mimes"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, excludeMimes:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/contacts/ui/QuickContactWindow;

    invoke-virtual {v7, v2, v6, v3, v0}, Lcom/android/contacts/ui/QuickContactWindow;->show(Landroid/net/Uri;Landroid/graphics/Rect;I[Ljava/lang/String;)V

    .line 81
    return-void

    .line 62
    .end local v0           #excludeMimes:[Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #lookupUri:Landroid/net/Uri;
    .end local v3           #mode:I
    .end local v6           #target:Landroid/graphics/Rect;
    :cond_1
    new-instance v7, Lcom/android/contacts/ui/QuickContactWindow;

    invoke-direct {v7, p0, p0}, Lcom/android/contacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;Lcom/android/contacts/ui/QuickContactWindow$OnDismissListener;)V

    iput-object v7, p0, Lcom/android/contacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/contacts/ui/QuickContactWindow;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/contacts/ui/QuickContactWindow;

    invoke-virtual {v0}, Lcom/android/contacts/ui/QuickContactWindow;->dismiss()V

    .line 97
    return-void
.end method
