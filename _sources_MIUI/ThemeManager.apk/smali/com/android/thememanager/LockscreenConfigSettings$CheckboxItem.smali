.class Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 5
    .parameter "objValue"

    .prologue
    const-string v4, "1"

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, isTrue:Z
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 298
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 302
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$CheckboxItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, "1"

    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/miui/android/screenelement/LockscreenConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v1, 0x1

    return v1

    .line 299
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 300
    const-string v1, "1"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 302
    :cond_2
    const-string v3, "0"

    goto :goto_1
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 286
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 291
    iget-object p0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    .end local p0
    check-cast p0, Landroid/preference/CheckBoxPreference;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    return-void
.end method
