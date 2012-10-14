.class public Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;
.super Landroid/database/ContentObservable;
.source "ThumbnailStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ThumbnailStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailStorageChangeObservable"
.end annotation


# static fields
.field private static mInstance:Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;

    invoke-direct {v0}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;-><init>()V

    sput-object v0, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->mInstance:Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/database/ContentObservable;-><init>()V

    .line 415
    return-void
.end method

.method public static getInstance()Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->mInstance:Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;

    return-object v0
.end method


# virtual methods
.method public notifyChanges()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->notifyChange(Z)V

    .line 426
    return-void
.end method
