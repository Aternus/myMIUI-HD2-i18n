.class Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
.super Ljava/lang/Object;
.source "BatterySavingRulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatterySavingRulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleSetting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatterySavingRulesSettings;

.field zBitmask:I

.field zCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter
    .parameter "bitmask"
    .parameter "checkBox"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->this$0:Lcom/android/settings/BatterySavingRulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zBitmask:I

    .line 51
    iput-object p3, p0, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 55
    :cond_0
    return-void
.end method
