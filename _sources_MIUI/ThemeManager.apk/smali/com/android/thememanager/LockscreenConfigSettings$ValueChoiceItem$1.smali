.class Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->onBuild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    const-string v1, "text"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    const-string v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method
