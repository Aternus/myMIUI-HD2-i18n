.class abstract Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ValueChoiceItem"
.end annotation


# instance fields
.field protected mItemsText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemsValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 4
    .parameter "objValue"

    .prologue
    .line 368
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 369
    .local v2, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    .line 370
    .local v1, pre:Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, v2}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 372
    const/4 v3, 0x1

    return v3
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 337
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "ele"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 344
    const-string v1, "Item"

    new-instance v2, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;-><init>(Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;)V

    invoke-static {p1, v1, v2}, Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 352
    .local v0, pre:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    .line 359
    .local v1, pre:Landroid/preference/ListPreference;
    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 361
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method
