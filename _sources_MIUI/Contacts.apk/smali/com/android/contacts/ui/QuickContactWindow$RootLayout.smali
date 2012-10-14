.class public Lcom/android/contacts/ui/QuickContactWindow$RootLayout;
.super Landroid/widget/RelativeLayout;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootLayout"
.end annotation


# instance fields
.field mQuickContactWindow:Lcom/android/contacts/ui/QuickContactWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$RootLayout;->mQuickContactWindow:Lcom/android/contacts/ui/QuickContactWindow;

    #calls: Lcom/android/contacts/ui/QuickContactWindow;->onBackPressed()V
    invoke-static {v0}, Lcom/android/contacts/ui/QuickContactWindow;->access$000(Lcom/android/contacts/ui/QuickContactWindow;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
