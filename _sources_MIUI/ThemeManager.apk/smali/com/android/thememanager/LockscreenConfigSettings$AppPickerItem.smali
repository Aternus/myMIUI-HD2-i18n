.class Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$Item;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerItem"
.end annotation


# instance fields
.field private mRequestCode:I

.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$Item;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3
    .parameter "objValue"

    .prologue
    .line 460
    move-object v0, p1

    check-cast v0, Lcom/miui/android/screenelement/Task;

    move-object v1, v0

    .line 461
    .local v1, task:Lcom/miui/android/screenelement/Task;
    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v2}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/android/screenelement/LockscreenConfigFile;->putTask(Lcom/miui/android/screenelement/Task;)V

    .line 462
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/android/screenelement/Task;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/android/screenelement/Task;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 463
    const/4 v2, 0x1

    return v2

    .line 462
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 443
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 473
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 492
    :goto_0
    return v1

    .line 476
    :cond_0
    new-instance v0, Lcom/miui/android/screenelement/Task;

    invoke-direct {v0}, Lcom/miui/android/screenelement/Task;-><init>()V

    .line 477
    .local v0, task:Lcom/miui/android/screenelement/Task;
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/android/screenelement/Task;->id:Ljava/lang/String;

    .line 478
    if-eqz p2, :cond_1

    .line 479
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/android/screenelement/Task;->name:Ljava/lang/String;

    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/android/screenelement/Task;->packageName:Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/android/screenelement/Task;->className:Ljava/lang/String;

    .line 482
    const-string v1, "android.intent.action.MAIN"

    iput-object v1, v0, Lcom/miui/android/screenelement/Task;->action:Ljava/lang/String;

    .line 483
    const-string v1, "AppPickerItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/android/screenelement/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/android/screenelement/Task;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->OnValueChange(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 487
    :cond_1
    iput-object v2, v0, Lcom/miui/android/screenelement/Task;->name:Ljava/lang/String;

    .line 488
    iput-object v2, v0, Lcom/miui/android/screenelement/Task;->packageName:Ljava/lang/String;

    .line 489
    iput-object v2, v0, Lcom/miui/android/screenelement/Task;->className:Ljava/lang/String;

    .line 490
    iput-object v2, v0, Lcom/miui/android/screenelement/Task;->action:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "ele"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #calls: Lcom/android/thememanager/LockscreenConfigSettings;->getNextRequestCode()I
    invoke-static {v0}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1300(Lcom/android/thememanager/LockscreenConfigSettings;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    .line 449
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    iget v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    #calls: Lcom/android/thememanager/LockscreenConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V
    invoke-static {v0, v1, p0}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1400(Lcom/android/thememanager/LockscreenConfigSettings;ILjava/lang/Object;)V

    .line 450
    return-void
.end method

.method public onClick()Z
    .locals 3

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const-class v2, Lcom/android/thememanager/ThirdAppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    iget v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/thememanager/LockscreenConfigSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/android/screenelement/LockscreenConfigFile;->getTask(Ljava/lang/String;)Lcom/miui/android/screenelement/Task;

    move-result-object v0

    .line 469
    .local v0, task:Lcom/miui/android/screenelement/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/android/screenelement/Task;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/thememanager/LockscreenConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 470
    return-void

    .line 469
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
