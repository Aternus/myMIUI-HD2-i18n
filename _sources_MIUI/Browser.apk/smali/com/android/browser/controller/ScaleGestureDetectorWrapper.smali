.class public Lcom/android/browser/controller/ScaleGestureDetectorWrapper;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorWrapper.java"


# instance fields
.field private mIsInMultiTouch:Z

.field private mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper$1;-><init>(Lcom/android/browser/controller/ScaleGestureDetectorWrapper;)V

    iput-object v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 29
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mIsInMultiTouch:Z

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/controller/ScaleGestureDetectorWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mIsInMultiTouch:Z

    return p1
.end method


# virtual methods
.method public isInMultiTouch()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mIsInMultiTouch:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    return-void
.end method
