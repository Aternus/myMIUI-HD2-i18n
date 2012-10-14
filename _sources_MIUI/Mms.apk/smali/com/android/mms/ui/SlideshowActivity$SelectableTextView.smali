.class Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;
.super Landroid/widget/TextView;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectableTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    .line 179
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity$SelectableTextView;->setFocusableInTouchMode(Z)V

    .line 181
    return-void
.end method


# virtual methods
.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method
