.class public Lcom/android/browser/util/MiRenDeleteOutOfDayFiles;
.super Ljava/lang/Object;
.source "MiRenDeleteOutOfDayFiles.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "com.android.browser.util.MiRenDeleteOutOfDayFils"

    sput-object v0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteOutOfDayFiles(Ljava/lang/String;I)V
    .locals 3
    .parameter "dirPath"
    .parameter "timeInterval"

    .prologue
    .line 17
    move-object v0, p0

    .line 18
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;

    invoke-direct {v1, p1, p0}, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/util/MiRenDeleteOutOfDayFiles$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method
