.class Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;
.super Ljava/lang/Object;
.source "FestivalSmsDatabase.java"

# interfaces
.implements Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/FestivalSmsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseSdcardListener"
.end annotation


# instance fields
.field private mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

.field final synthetic this$0:Lcom/android/mms/data/FestivalSmsDatabase;


# direct methods
.method public constructor <init>(Lcom/android/mms/data/FestivalSmsDatabase;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;->this$0:Lcom/android/mms/data/FestivalSmsDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-static {p2}, Lcom/android/mms/util/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/android/mms/util/SDCardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    .line 228
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;->mSDCardMonitor:Lcom/android/mms/util/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/SDCardMonitor;->addSdCardStatusListener(Lcom/android/mms/util/SDCardMonitor$SdCardStatusListener;)V

    .line 229
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 1
    .parameter "mount"

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;->this$0:Lcom/android/mms/data/FestivalSmsDatabase;

    #calls: Lcom/android/mms/data/FestivalSmsDatabase;->close()V
    invoke-static {v0}, Lcom/android/mms/data/FestivalSmsDatabase;->access$000(Lcom/android/mms/data/FestivalSmsDatabase;)V

    .line 236
    :cond_0
    return-void
.end method
