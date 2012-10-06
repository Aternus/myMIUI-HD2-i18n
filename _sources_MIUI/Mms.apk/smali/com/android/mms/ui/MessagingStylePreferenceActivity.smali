.class public Lcom/android/mms/ui/MessagingStylePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingStylePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

.field private mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setTimeStyleVisiable(Ljava/lang/String;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 65
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->addPreferencesFromResource(I)V

    .line 43
    const-string v2, "pref_key_messaging_style"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessagingStylePreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    .line 44
    iget-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MessagingStylePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v2, "pref_key_time_style"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreferenceCategory;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;

    .line 47
    iget-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v2, p0}, Landroid/preference/RadioButtonPreferenceCategory;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, style:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->setTimeStyleVisiable(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    if-ne p1, v0, :cond_1

    .line 57
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->setTimeStyleVisiable(Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Landroid/preference/RadioButtonPreferenceCategory;

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingStylePreference;->updateBubbleStyleImage()V

    goto :goto_0
.end method
