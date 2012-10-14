.class Lcom/android/gallery/view/MovieViewControl$2;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/view/MovieViewControl;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/MovieViewControl;


# direct methods
.method constructor <init>(Lcom/android/gallery/view/MovieViewControl;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery/view/MovieViewControl$2;->this$0:Lcom/android/gallery/view/MovieViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$2;->this$0:Lcom/android/gallery/view/MovieViewControl;

    invoke-virtual {v0}, Lcom/android/gallery/view/MovieViewControl;->onCompletion()V

    .line 128
    return-void
.end method
