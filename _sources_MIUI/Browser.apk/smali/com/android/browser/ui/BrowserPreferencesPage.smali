.class public Lcom/android/browser/ui/BrowserPreferencesPage;
.super Lcom/android/browser/ui/BrowserPreferencesBasePage;
.source "BrowserPreferencesPage.java"


# static fields
.field public static final CURRENT_PAGE:Ljava/lang/String; = "currentPage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/browser/ui/BrowserPreferencesBasePage;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 22
    const-class v4, Lcom/android/browser/controller/BrowserSettings$Keys;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 23
    .local v3, keys:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/android/browser/controller/BrowserSettings$Keys;>;"
    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/BrowserSettings$Keys;

    .line 24
    .local v2, key:Lcom/android/browser/controller/BrowserSettings$Keys;
    iget-boolean v4, v2, Lcom/android/browser/controller/BrowserSettings$Keys;->isCommonKey:Z

    if-eqz v4, :cond_0

    .line 25
    iget-object v4, v2, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/BrowserPreferencesPage;->initPreference(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v2           #key:Lcom/android/browser/controller/BrowserSettings$Keys;
    :cond_1
    sget-object v4, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_ABOUT_DIALOG:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v4, v4, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 31
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 32
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    .line 37
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_EXTRAS_RESET_DEFAULTS:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v4, v4, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 39
    .local v2, value:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v7, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserPreferencesPage;->finish()V

    .end local v2           #value:Ljava/lang/Boolean;
    .end local p2
    :cond_0
    move v3, v1

    .line 51
    :goto_0
    return v3

    .line 42
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/browser/controller/BrowserSettings$Keys;->PREF_CLEAR_HISTORY:Lcom/android/browser/controller/BrowserSettings$Keys;

    iget-object v4, v4, Lcom/android/browser/controller/BrowserSettings$Keys;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v7, :cond_0

    .line 46
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/ui/BrowserPreferencesPage;->setResult(ILandroid/content/Intent;)V

    move v3, v7

    .line 48
    goto :goto_0
.end method
