.class Lcom/android/contacts/ViewContactActivity$8;
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

.field final synthetic val$entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$8;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$8;->val$entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$8;->this$0:Lcom/android/contacts/ViewContactActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ViewContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1267
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$8;->val$entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iget-object v1, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    const/4 v1, 0x1

    return v1
.end method
