.class Lcom/android/gallery/ui/TabFolderTreeActivity$2;
.super Ljava/lang/Object;
.source "TabFolderTreeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/TabFolderTreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const-class v0, Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery/ui/TabFolderTreeActivity$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$2;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    .local v0, path:Ljava/lang/String;
    sget-boolean v1, Lcom/android/gallery/ui/TabFolderTreeActivity$2;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$2;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V
    invoke-static {v1, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$100(Lcom/android/gallery/ui/TabFolderTreeActivity;Z)V

    .line 426
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$2;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #calls: Lcom/android/gallery/ui/TabFolderTreeActivity;->switchFolder(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$200(Lcom/android/gallery/ui/TabFolderTreeActivity;Ljava/lang/String;)V

    .line 427
    return-void
.end method
