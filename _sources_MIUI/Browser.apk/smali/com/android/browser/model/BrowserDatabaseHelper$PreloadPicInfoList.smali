.class public Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
.super Ljava/lang/Object;
.source "BrowserDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/BrowserDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadPicInfoList"
.end annotation


# instance fields
.field public PicFileName:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field public Urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "picFileName"
    .parameter "urls"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Title:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->PicFileName:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Urls:[Ljava/lang/String;

    .line 250
    return-void
.end method
