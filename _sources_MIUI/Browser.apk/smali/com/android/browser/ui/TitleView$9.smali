.class Lcom/android/browser/ui/TitleView$9;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$9;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 275
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$9;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1100(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
