.class Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorWrapper.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ScaleGestureDetectorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ScaleGestureDetectorWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;->this$0:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 20
    iget-object v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;->this$0:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    #setter for: Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mIsInMultiTouch:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->access$002(Lcom/android/browser/controller/ScaleGestureDetectorWrapper;Z)Z

    .line 21
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;->this$0:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mIsInMultiTouch:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->access$002(Lcom/android/browser/controller/ScaleGestureDetectorWrapper;Z)Z

    .line 16
    return-void
.end method
