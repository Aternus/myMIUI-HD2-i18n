.class Lcom/android/contacts/ContactsListActivity$7$1$1$1;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity$7$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/contacts/ContactsListActivity$7$1$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity$7$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$7$1$1$1;->this$3:Lcom/android/contacts/ContactsListActivity$7$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$7$1$1$1;->this$3:Lcom/android/contacts/ContactsListActivity$7$1$1;

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$7$1$1;->this$2:Lcom/android/contacts/ContactsListActivity$7$1;

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1235
    return-void
.end method
