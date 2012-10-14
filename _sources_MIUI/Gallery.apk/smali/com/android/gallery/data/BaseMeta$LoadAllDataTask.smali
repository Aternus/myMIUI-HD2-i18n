.class public Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;
.super Lcom/android/gallery/util/AsyncLoadTask;
.source "BaseMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/BaseMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LoadAllDataTask"
.end annotation


# instance fields
.field private mListener:Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;

.field private mMeta:Lcom/android/gallery/data/BaseMeta;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V
    .locals 1
    .parameter "meta"
    .parameter "listener"
    .parameter "view"

    .prologue
    .line 299
    iget-object v0, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/gallery/util/AsyncLoadTask;-><init>(Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 301
    iput-object p2, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mListener:Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;

    .line 302
    iput-object p3, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Lcom/android/gallery/data/BaseMeta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mListener:Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta;->loadAllData()V

    .line 319
    return-void
.end method

.method public postResult()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mListener:Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;

    invoke-direct {v1, p0}, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;-><init>(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_0
    return-void
.end method
