.class Lcom/android/contacts/ContactsListActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ContactsListActivity;->deleteContact(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$000(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V

    .line 536
    return-void
.end method
