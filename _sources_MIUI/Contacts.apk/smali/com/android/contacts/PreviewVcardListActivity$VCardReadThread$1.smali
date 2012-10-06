.class Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

.field final synthetic val$counter:Landroid/pim/vcard/VCardEntryCounter;


# direct methods
.method constructor <init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;Landroid/pim/vcard/VCardEntryCounter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iput-object p2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->val$counter:Landroid/pim/vcard/VCardEntryCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->access$600(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->val$counter:Landroid/pim/vcard/VCardEntryCounter;

    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntryCounter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v1, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    iget-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v2, v2, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$1;)V

    #setter for: Lcom/android/contacts/PreviewVcardListActivity;->mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
    invoke-static {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->access$702(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;)Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    .line 354
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$900(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v1, v1, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
    invoke-static {v1}, Lcom/android/contacts/PreviewVcardListActivity;->access$700(Lcom/android/contacts/PreviewVcardListActivity;)Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mAdapter:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$700(Lcom/android/contacts/PreviewVcardListActivity;)Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;->notifyDataSetChanged()V

    .line 357
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$400(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v1, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry;

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->goToVcardSingleItem(Landroid/pim/vcard/VCardEntry;Z)V
    invoke-static {v1, v0, v4}, Lcom/android/contacts/PreviewVcardListActivity;->access$100(Lcom/android/contacts/PreviewVcardListActivity;Landroid/pim/vcard/VCardEntry;Z)V

    .line 359
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method
