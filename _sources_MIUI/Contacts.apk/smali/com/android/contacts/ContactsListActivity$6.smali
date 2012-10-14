.class Lcom/android/contacts/ContactsListActivity$6;
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
    .line 1120
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$6;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$6;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1123
    return-void
.end method
