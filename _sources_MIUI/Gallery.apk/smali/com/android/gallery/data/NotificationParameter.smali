.class public Lcom/android/gallery/data/NotificationParameter;
.super Ljava/lang/Object;
.source "NotificationParameter.java"


# instance fields
.field private mFolderPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery/data/NotificationParameter;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter "handler"
    .parameter "folderPath"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/gallery/data/NotificationParameter;->mHandler:Landroid/os/Handler;

    .line 19
    iput-object p2, p0, Lcom/android/gallery/data/NotificationParameter;->mFolderPath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/gallery/data/NotificationParameter;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/gallery/data/NotificationParameter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
