.class Lcom/android/contacts/ContactsListActivity$2;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$2;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "ContactsListActivity"

    .line 965
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 966
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 990
    :cond_0
    :goto_0
    return v4

    .line 967
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 968
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 982
    :sswitch_0
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$2;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->createNew()V
    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$200(Lcom/android/contacts/ContactsListActivity;)V

    goto :goto_0

    .line 973
    :sswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.channel.NAME_CARD_XT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$2;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 976
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 977
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ContactsListActivity"

    const-string v2, "miliao not handle this intent"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v2, "ContactsListActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 988
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 970
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07009f -> :sswitch_0
        0x7f0700ac -> :sswitch_1
    .end sparse-switch
.end method
