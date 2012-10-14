.class Lcom/android/contacts/ContactsListActivity$1;
.super Landroid/database/ContentObserver;
.source "ContactsListActivity.java"


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
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$100(Lcom/android/contacts/ContactsListActivity;Z)Z

    .line 606
    return-void
.end method
