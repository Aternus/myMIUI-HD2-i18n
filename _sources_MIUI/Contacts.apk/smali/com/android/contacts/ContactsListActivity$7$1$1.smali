.class Lcom/android/contacts/ContactsListActivity$7$1$1;
.super Ljava/lang/Thread;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity$7$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/ContactsListActivity$7$1;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity$7$1;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iput-object p2, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1221
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->val$ids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1222
    .local v0, contactId:Ljava/lang/Long;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1223
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v3, v3, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28200014

    if-ne v3, v4, :cond_1

    .line 1224
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v4, 0x0

    #calls: Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V
    invoke-static {v3, v2, v4}, Lcom/android/contacts/ContactsListActivity;->access$600(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;I)V

    .line 1229
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->val$progress:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v3, v3, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x8a00004

    if-ne v3, v4, :cond_0

    .line 1226
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    #calls: Lcom/android/contacts/ContactsListActivity;->deleteContact(Landroid/net/Uri;)V
    invoke-static {v3, v2}, Lcom/android/contacts/ContactsListActivity;->access$000(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V

    goto :goto_1

    .line 1232
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    new-instance v4, Lcom/android/contacts/ContactsListActivity$7$1$1$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/ContactsListActivity$7$1$1$1;-><init>(Lcom/android/contacts/ContactsListActivity$7$1$1;)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/ContactsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1237
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1238
    return-void
.end method
