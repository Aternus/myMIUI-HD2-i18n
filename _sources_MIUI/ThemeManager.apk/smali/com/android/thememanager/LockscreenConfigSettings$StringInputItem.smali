.class Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 4
    .parameter "objValue"

    .prologue
    .line 323
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 324
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v2}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/miui/android/screenelement/LockscreenConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x1

    return v2
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 312
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 319
    return-void
.end method
