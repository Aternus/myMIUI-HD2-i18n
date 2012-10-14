.class Lcom/android/phone/AutoAnswerSetting$1;
.super Ljava/lang/Object;
.source "AutoAnswerSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoAnswerSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoAnswerSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoAnswerSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/phone/AutoAnswerSetting$1;->this$0:Lcom/android/phone/AutoAnswerSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 40
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 41
    .local v1, enable:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/phone/AutoAnswerSetting$1;->this$0:Lcom/android/phone/AutoAnswerSetting;

    const-string v3, "pref_auto_answer_delay"

    invoke-virtual {v2, v3}, Lcom/android/phone/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 42
    iget-object v2, p0, Lcom/android/phone/AutoAnswerSetting$1;->this$0:Lcom/android/phone/AutoAnswerSetting;

    const-string v3, "pref_auto_answer_scenario"

    invoke-virtual {v2, v3}, Lcom/android/phone/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 43
    const/4 v2, 0x1

    return v2
.end method
