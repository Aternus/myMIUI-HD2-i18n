.class Lcom/android/browser/ui/UrlTitleBarView$2;
.super Ljava/lang/Object;
.source "UrlTitleBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/UrlTitleBarView;->refeshFuncBtn(Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/UrlTitleBarView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/UrlTitleBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/browser/ui/UrlTitleBarView$2;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    new-instance v0, Landroid/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView$2;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    #getter for: Lcom/android/browser/ui/UrlTitleBarView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/ui/UrlTitleBarView;->access$400(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, guidePopupWindow:Landroid/widget/GuidePopupWindow;
    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 336
    invoke-virtual {v0, v2}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 338
    invoke-virtual {v0, v2}, Landroid/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/browser/ui/UrlTitleBarView$2;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    #getter for: Lcom/android/browser/ui/UrlTitleBarView;->mFuncBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/browser/ui/UrlTitleBarView;->access$500(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 340
    return-void
.end method
