.class Lcom/android/thememanager/LockscreenConfigSettings$2;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LockscreenConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;

.field final synthetic val$category:Landroid/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    iput-object p2, p0, Lcom/android/thememanager/LockscreenConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/thememanager/LockscreenConfigSettings;->createItem(Ljava/lang/String;)Lcom/android/thememanager/LockscreenConfigSettings$Item;
    invoke-static {v1, v2}, Lcom/android/thememanager/LockscreenConfigSettings;->access$100(Lcom/android/thememanager/LockscreenConfigSettings;Ljava/lang/String;)Lcom/android/thememanager/LockscreenConfigSettings$Item;

    move-result-object v0

    .line 188
    .local v0, item:Lcom/android/thememanager/LockscreenConfigSettings$Item;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1, p1}, Lcom/android/thememanager/LockscreenConfigSettings$Item;->build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/thememanager/LockscreenConfigSettings;->access$200(Lcom/android/thememanager/LockscreenConfigSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    return-void
.end method
