.class Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;
.super Landroid/os/Handler;
.source "FolderViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/FolderViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FolderViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery/ui/FolderViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery/ui/FolderViewActivity;Lcom/android/gallery/ui/FolderViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;-><init>(Lcom/android/gallery/ui/FolderViewActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderViewActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method
