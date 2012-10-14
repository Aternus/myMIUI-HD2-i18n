.class Lcom/android/browser/controller/NavigationHomeController$EventHandler;
.super Landroid/os/Handler;
.source "NavigationHomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/NavigationHomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# static fields
.field static final HIDE_LOADING_PROGRESS_BAR:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/NavigationHomeController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/browser/controller/NavigationHomeController$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 80
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 91
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 83
    .local v1, group:Landroid/view/ViewGroup;
    const v3, 0x7f0d0038

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, progress:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v3, 0x7f0d0037

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v3, 0x7f020032

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
