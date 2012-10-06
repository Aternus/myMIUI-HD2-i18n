.class Lcom/android/browser/ui/MiRenWebViewCore$2;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore;->hideZoomControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$2;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$2;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    return-void
.end method

.method public onZoom(Z)V
    .locals 0
    .parameter "zoomIn"

    .prologue
    .line 1090
    return-void
.end method
