.class public Lcom/miui/player/ui/DeleteItems;
.super Ljava/lang/Object;
.source "DeleteItems.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

.field private final mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private final mDescript:Ljava/lang/String;

.field private final mItemList:[J

.field private final mOnlineId:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "l"
    .parameter "requestCode"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/miui/player/ui/DeleteItems$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/DeleteItems$1;-><init>(Lcom/miui/player/ui/DeleteItems;)V

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object p3, p0, Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 47
    iput p4, p0, Lcom/miui/player/ui/DeleteItems;->mRequestCode:I

    .line 48
    const-string v0, "description"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mDescript:Ljava/lang/String;

    .line 49
    const-string v0, "items"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mItemList:[J

    .line 50
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mPath:Ljava/lang/String;

    .line 51
    const-string v0, "online_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mOnlineId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/DeleteItems;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mItemList:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/DeleteItems;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/DeleteItems;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/DeleteItems;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/DeleteItems;)Lcom/miui/player/MusicUtils$OnDialogCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/DeleteItems;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/player/ui/DeleteItems;->mRequestCode:I

    return v0
.end method


# virtual methods
.method public show()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mButtonClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems;->mDescript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 65
    return-void
.end method
