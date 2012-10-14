.class Lcom/android/contacts/TwelveKeyDialer$2$1$1;
.super Ljava/lang/Thread;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer$2$1;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iput-object p2, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x27

    const/4 v8, 0x1

    const-string v11, ")"

    .line 592
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->this$1:Lcom/android/contacts/TwelveKeyDialer$2;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/DialerListAdapter;
    invoke-static {v7}, Lcom/android/contacts/TwelveKeyDialer;->access$400(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/DialerListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/DialerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 594
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-boolean v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->val$byNumber:Z

    if-eqz v7, :cond_3

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->val$positions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 597
    .local v5, pos:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 598
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    :cond_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 602
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, normalizedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 604
    .local v4, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v4, :cond_1

    .line 605
    invoke-virtual {v4, v8, v8}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 607
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 610
    .end local v3           #normalizedNumber:Ljava/lang/String;
    .end local v4           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5           #pos:I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "normalized_number IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, where:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->this$1:Lcom/android/contacts/TwelveKeyDialer$2;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 623
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->this$1:Lcom/android/contacts/TwelveKeyDialer$2;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    new-instance v8, Lcom/android/contacts/TwelveKeyDialer$2$1$1$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/TwelveKeyDialer$2$1$1$1;-><init>(Lcom/android/contacts/TwelveKeyDialer$2$1$1;)V

    invoke-virtual {v7, v8}, Lcom/android/contacts/TwelveKeyDialer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 630
    return-void

    .line 612
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #where:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer$2$1$1;->this$2:Lcom/android/contacts/TwelveKeyDialer$2$1;

    iget-object v7, v7, Lcom/android/contacts/TwelveKeyDialer$2$1;->val$positions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 614
    .restart local v5       #pos:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 615
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    :cond_4
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 618
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 620
    .end local v5           #pos:I
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contactid IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #where:Ljava/lang/String;
    goto :goto_1
.end method
