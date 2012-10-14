.class Lcom/android/phone/AutoAnswerSetting$2;
.super Ljava/lang/Object;
.source "AutoAnswerSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoAnswerSetting;->createScenarios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoAnswerSetting;

.field final synthetic val$scenarioStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoAnswerSetting;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/AutoAnswerSetting$2;->this$0:Lcom/android/phone/AutoAnswerSetting;

    iput-object p2, p0, Lcom/android/phone/AutoAnswerSetting$2;->val$scenarioStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v3, v0

    .line 60
    .local v3, pref:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v3}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/android/phone/AutoAnswerSetting$2;->val$scenarioStrings:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 62
    .local v2, index:I
    iget-object v4, p0, Lcom/android/phone/AutoAnswerSetting$2;->this$0:Lcom/android/phone/AutoAnswerSetting;

    invoke-virtual {v4}, Lcom/android/phone/AutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 63
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_auto_answer_scenario"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #index:I
    :cond_0
    const/4 v4, 0x0

    return v4
.end method
