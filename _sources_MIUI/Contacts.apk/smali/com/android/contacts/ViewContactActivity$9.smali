.class Lcom/android/contacts/ViewContactActivity$9;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity;->createCalllogMenu(Landroid/view/ContextMenu;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$9;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$9;->this$0:Lcom/android/contacts/ViewContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 1282
    const/4 v0, 0x1

    return v0
.end method
