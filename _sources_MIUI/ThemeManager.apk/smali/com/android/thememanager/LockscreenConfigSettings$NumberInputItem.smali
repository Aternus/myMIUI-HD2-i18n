.class Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 412
    const-wide/16 v0, 0x0

    .line 414
    .local v0, d:D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 417
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/android/screenelement/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 415
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 6
    .parameter "objValue"

    .prologue
    .line 422
    const-wide/16 v0, 0x0

    .line 424
    .local v0, d:D
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 429
    invoke-static {v0, v1}, Lcom/miui/android/screenelement/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v4}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/miui/android/screenelement/LockscreenConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, v3}, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 434
    const/4 v4, 0x1

    .end local v3           #value:Ljava/lang/String;
    :goto_0
    return v4

    .line 425
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 426
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 401
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 409
    return-void
.end method
