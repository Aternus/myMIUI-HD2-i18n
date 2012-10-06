.class Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;
.super Ljava/lang/Thread;
.source "ContactPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreDefaultPhoto"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/contacts/ContactPickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactPickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPickerActivity;Lcom/android/contacts/ContactPickerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;-><init>(Lcom/android/contacts/ContactPickerActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->mCanceled:Z

    .line 580
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 568
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->mCanceled:Z

    .line 570
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 572
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactPickerActivity;->access$202(Lcom/android/contacts/ContactPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 575
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 534
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iget-object v3, v3, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iget-object v3, v3, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 540
    .local v1, id:Ljava/lang/Long;
    iget-boolean v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->mCanceled:Z

    if-nez v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v2

    .line 545
    .local v2, rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #calls: Lcom/android/contacts/ContactPickerActivity;->setContactPhoto(Ljava/util/ArrayList;[B)V
    invoke-static {v3, v2, v6}, Lcom/android/contacts/ContactPickerActivity;->access$100(Lcom/android/contacts/ContactPickerActivity;Ljava/util/ArrayList;[B)V

    .line 547
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_1

    .line 552
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 553
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 554
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #setter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v6}, Lcom/android/contacts/ContactPickerActivity;->access$202(Lcom/android/contacts/ContactPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 557
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;->this$0:Lcom/android/contacts/ContactPickerActivity;

    new-instance v4, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto$1;-><init>(Lcom/android/contacts/ContactPickerActivity$RestoreDefaultPhoto;)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/ContactPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
