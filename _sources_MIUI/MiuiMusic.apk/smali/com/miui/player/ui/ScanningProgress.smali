.class public Lcom/miui/player/ui/ScanningProgress;
.super Ljava/lang/Object;
.source "ScanningProgress.java"


# static fields
.field private static final CHECK:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mIsCanceled:Z

.field private final mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V
    .locals 1
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/ScanningProgress;->mIsCanceled:Z

    .line 48
    new-instance v0, Lcom/miui/player/ui/ScanningProgress$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ScanningProgress$1;-><init>(Lcom/miui/player/ui/ScanningProgress;)V

    iput-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/miui/player/ui/ScanningProgress;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 80
    iput p3, p0, Lcom/miui/player/ui/ScanningProgress;->mRequestCode:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/ScanningProgress;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/ScanningProgress;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/ScanningProgress;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/player/ui/ScanningProgress;->mIsCanceled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/player/ui/ScanningProgress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/player/ui/ScanningProgress;->mIsCanceled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/player/ui/ScanningProgress;)Lcom/miui/player/MusicUtils$OnDialogCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/ScanningProgress;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/player/ui/ScanningProgress;->mRequestCode:I

    return v0
.end method


# virtual methods
.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/ScanningProgress;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 85
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 86
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setVolumeControlStream(I)V

    .line 87
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/miui/player/ui/ScanningProgress$2;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/ScanningProgress$2;-><init>(Lcom/miui/player/ui/ScanningProgress;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/miui/player/ui/ScanningProgress$3;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/ScanningProgress$3;-><init>(Lcom/miui/player/ui/ScanningProgress;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    return-void
.end method
