.class Lcom/android/gallery/ui/MovieView$2;
.super Landroid/database/ContentObserver;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/MovieView;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/MovieView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery/ui/MovieView$2;->this$0:Lcom/android/gallery/ui/MovieView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView$2;->this$0:Lcom/android/gallery/ui/MovieView;

    #calls: Lcom/android/gallery/ui/MovieView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/gallery/ui/MovieView;->access$100(Lcom/android/gallery/ui/MovieView;)V

    .line 128
    return-void
.end method
