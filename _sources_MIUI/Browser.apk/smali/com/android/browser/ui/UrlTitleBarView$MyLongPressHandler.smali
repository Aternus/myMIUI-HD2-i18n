.class Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;
.super Landroid/os/Handler;
.source "UrlTitleBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/UrlTitleBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLongPressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/UrlTitleBarView;


# direct methods
.method private constructor <init>(Lcom/android/browser/ui/UrlTitleBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ui/UrlTitleBarView;Lcom/android/browser/ui/UrlTitleBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;-><init>(Lcom/android/browser/ui/UrlTitleBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/browser/ui/UrlTitleBarView;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    #getter for: Lcom/android/browser/ui/UrlTitleBarView;->_urlFrameView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/UrlTitleBarView;->access$100(Lcom/android/browser/ui/UrlTitleBarView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView$MyLongPressHandler;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    #calls: Lcom/android/browser/ui/UrlTitleBarView;->showUrlTitleBarContextMenu()V
    invoke-static {v0}, Lcom/android/browser/ui/UrlTitleBarView;->access$200(Lcom/android/browser/ui/UrlTitleBarView;)V

    .line 65
    :cond_0
    return-void
.end method
