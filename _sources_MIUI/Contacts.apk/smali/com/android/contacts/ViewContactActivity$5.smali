.class Lcom/android/contacts/ViewContactActivity$5;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity;->bindMiliaoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;

.field final synthetic val$numbers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$5;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$5;->val$numbers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 596
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 597
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 611
    :cond_0
    :goto_0
    return v5

    .line 598
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 599
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 602
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.channel.SEND_INVITE_SMS_XT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "phone_numbers"

    const-string v3, ","

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity$5;->val$numbers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$5;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 606
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ViewContact"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 609
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
