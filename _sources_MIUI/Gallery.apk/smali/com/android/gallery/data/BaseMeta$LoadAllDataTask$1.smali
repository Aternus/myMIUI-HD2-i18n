.class Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;
.super Ljava/lang/Object;
.source "BaseMeta.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->postResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;


# direct methods
.method constructor <init>(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mListener:Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;
    invoke-static {v0}, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->access$200(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v1}, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->access$000(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;->access$100(Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;->onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V

    .line 311
    return-void
.end method
