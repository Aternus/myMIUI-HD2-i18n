.class Lcom/miui/player/ui/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$2;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$902(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 776
    return-void
.end method
