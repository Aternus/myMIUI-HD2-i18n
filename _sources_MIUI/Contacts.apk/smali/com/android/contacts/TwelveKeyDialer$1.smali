.class Lcom/android/contacts/TwelveKeyDialer$1;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    new-instance v0, Landroid/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {v0, v1}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, guidePopupWindow:Landroid/widget/GuidePopupWindow;
    const v1, 0x7f0b01d2

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 547
    invoke-virtual {v0, v3}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 548
    invoke-virtual {v0, v3}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer$1;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/TwelveKeyDialer;->access$600(Lcom/android/contacts/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 550
    return-void
.end method
