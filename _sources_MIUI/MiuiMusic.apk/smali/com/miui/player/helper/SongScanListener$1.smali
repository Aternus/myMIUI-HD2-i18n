.class Lcom/miui/player/helper/SongScanListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SongScanListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/SongScanListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/SongScanListener;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/player/helper/SongScanListener$1;->this$0:Lcom/miui/player/helper/SongScanListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener$1;->this$0:Lcom/miui/player/helper/SongScanListener;

    #getter for: Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;
    invoke-static {v0}, Lcom/miui/player/helper/SongScanListener;->access$000(Lcom/miui/player/helper/SongScanListener;)Lcom/miui/player/helper/SongScanListener$SongScanner;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/player/helper/SongScanListener$SongScanner;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener$1;->this$0:Lcom/miui/player/helper/SongScanListener;

    #getter for: Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;
    invoke-static {v0}, Lcom/miui/player/helper/SongScanListener;->access$000(Lcom/miui/player/helper/SongScanListener;)Lcom/miui/player/helper/SongScanListener$SongScanner;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/helper/SongScanListener$SongScanner;->scan()V

    .line 81
    return-void
.end method
