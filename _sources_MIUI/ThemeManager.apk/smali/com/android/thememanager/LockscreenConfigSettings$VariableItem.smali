.class abstract Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$Item;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VariableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$Item;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected abstract setValue(Ljava/lang/String;)V
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/android/screenelement/LockscreenConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_0
.end method
