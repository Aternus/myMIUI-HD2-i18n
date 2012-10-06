.class Lcom/android/contacts/ContactsListActivity$5;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity;->setupAddToFavoriteView()V
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
    .line 1107
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/contacts/ContactsListActivity;->access$300(Lcom/android/contacts/ContactsListActivity;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1111
    .local v2, id:Ljava/lang/Long;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1112
    .local v0, contactUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v4, 0x1

    #calls: Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V
    invoke-static {v3, v0, v4}, Lcom/android/contacts/ContactsListActivity;->access$600(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1115
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/ContactsListActivity;->setResult(I)V

    .line 1116
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1117
    return-void
.end method
