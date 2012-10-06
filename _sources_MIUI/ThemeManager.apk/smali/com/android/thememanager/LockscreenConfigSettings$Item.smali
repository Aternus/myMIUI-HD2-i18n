.class abstract Lcom/android/thememanager/LockscreenConfigSettings$Item;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Item"
.end annotation


# instance fields
.field protected mDefaultValue:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mPreference:Landroid/preference/Preference;

.field protected mSummary:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$Item;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public abstract OnValueChange(Ljava/lang/Object;)Z
.end method

.method public final build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z
    .locals 2
    .parameter "category"
    .parameter "ele"

    .prologue
    .line 224
    const-string v0, "id"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    .line 225
    const-string v0, "text"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mTitle:Ljava/lang/String;

    .line 226
    const-string v0, "summary"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mSummary:Ljava/lang/String;

    .line 227
    const-string v0, "default"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    invoke-virtual {p0, v0}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->createPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    .line 230
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 233
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->onBuild(Lorg/w3c/dom/Element;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->updateValue()V

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract createPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "ele"

    .prologue
    .line 250
    return-void
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method protected setValuePreview(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method public abstract updateValue()V
.end method
