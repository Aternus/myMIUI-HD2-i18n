.class public Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;
.super Lcom/android/browser/ui/BrowserPreferencesBasePage;
.source "BrowserPreferencesAdvancedPage.java"


# static fields
.field public static final CURRENT_PAGE:Ljava/lang/String; = "currentPage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/browser/ui/BrowserPreferencesBasePage;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;->addPreferencesFromResource(I)V

    .line 25
    const-class v3, Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 26
    .local v2, keys:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/android/browser/controller/BrowserSettings$Keys;>;"
    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 27
    .local v1, key:Lcom/android/browser/controller/BrowserSettings$Keys;
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;->initPreference(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v1           #key:Lcom/android/browser/controller/BrowserSettings$Keys;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v2

    .line 35
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v5, v5, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    .line 37
    .local v3, value:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;->finish()V

    .end local v3           #value:Ljava/lang/Boolean;
    .end local p2
    :cond_0
    move v4, v2

    .line 71
    .end local p1
    :goto_0
    return v4

    .line 40
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_HOMEPAGE:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v5, v5, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 41
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 42
    .local v3, value:Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v8, :cond_4

    move v1, v7

    .line 43
    .local v1, needUpdate:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 46
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    const/4 v1, 0x1

    .line 51
    :cond_3
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 52
    if-eqz v1, :cond_5

    .line 55
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move v4, v9

    .line 60
    goto :goto_0

    .end local v1           #needUpdate:Z
    .restart local p1
    :cond_4
    move v1, v9

    .line 42
    goto :goto_1

    .restart local v1       #needUpdate:Z
    :cond_5
    move v4, v7

    .line 62
    goto :goto_0

    .line 64
    .end local v1           #needUpdate:Z
    .end local v3           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v5, v5, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 68
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;->setResult(ILandroid/content/Intent;)V

    move v4, v7

    .line 69
    goto/16 :goto_0
.end method
