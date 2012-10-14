.class Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"

# interfaces
.implements Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/PlayerCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBackwardRepeatingClick"
.end annotation


# instance fields
.field private mCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

.field private mScanInfo:Lcom/miui/player/MusicUtils$ScanInfo;

.field final synthetic this$0:Lcom/miui/player/helper/controller/PlayerCommonController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;)V
    .locals 1
    .parameter
    .parameter "callback"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->this$0:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/miui/player/MusicUtils$ScanInfo;

    invoke-direct {v0}, Lcom/miui/player/MusicUtils$ScanInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/MusicUtils$ScanInfo;

    .line 116
    iput-object p2, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    .line 117
    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 2
    .parameter "v"
    .parameter "delta"
    .parameter "repcnt"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/MusicUtils$ScanInfo;

    invoke-static {p4, p2, p3, v0}, Lcom/miui/player/MusicUtils;->scanBackward(IJLcom/miui/player/MusicUtils$ScanInfo;)V

    .line 122
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;->mScanInfo:Lcom/miui/player/MusicUtils$ScanInfo;

    invoke-interface {v0, v1}, Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;->update(Lcom/miui/player/MusicUtils$ScanInfo;)V

    .line 125
    :cond_0
    return-void
.end method
