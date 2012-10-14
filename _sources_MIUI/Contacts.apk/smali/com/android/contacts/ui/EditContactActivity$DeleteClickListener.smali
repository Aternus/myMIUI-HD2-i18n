.class Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1199
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #getter for: Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;
    invoke-static {v2}, Lcom/android/contacts/ui/EditContactActivity;->access$300(Lcom/android/contacts/ui/EditContactActivity;)Lcom/android/contacts/model/EntitySet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 1200
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->markDeleted()V

    goto :goto_0

    .line 1204
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v3, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #getter for: Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;
    invoke-static {v4}, Lcom/android/contacts/ui/EditContactActivity;->access$300(Lcom/android/contacts/ui/EditContactActivity;)Lcom/android/contacts/model/EntitySet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/EntitySet;->findRawContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->updateDeleteContactCallLogs(Landroid/content/Context;J)V

    .line 1208
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/EditContactActivity;->doSaveAction(I)Z

    .line 1210
    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ui/EditContactActivity;->finish()V

    .line 1211
    return-void
.end method
