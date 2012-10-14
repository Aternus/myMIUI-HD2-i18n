.class Lcom/android/contacts/ViewContactActivity$10$1;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity$10;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ViewContactActivity$10;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$10$1;->this$1:Lcom/android/contacts/ViewContactActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$10$1;->this$1:Lcom/android/contacts/ViewContactActivity$10;

    iget-object v2, v2, Lcom/android/contacts/ViewContactActivity$10;->val$entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

    iget-wide v2, v2, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$10$1;->this$1:Lcom/android/contacts/ViewContactActivity$10;

    iget-object v1, v1, Lcom/android/contacts/ViewContactActivity$10;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$10$1;->this$1:Lcom/android/contacts/ViewContactActivity$10;

    iget-object v1, v1, Lcom/android/contacts/ViewContactActivity$10;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->mUnknownContact:Z
    invoke-static {v1}, Lcom/android/contacts/ViewContactActivity;->access$1100(Lcom/android/contacts/ViewContactActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$10$1;->this$1:Lcom/android/contacts/ViewContactActivity$10;

    iget-object v1, v1, Lcom/android/contacts/ViewContactActivity$10;->this$0:Lcom/android/contacts/ViewContactActivity;

    #calls: Lcom/android/contacts/ViewContactActivity;->startEntityQuery()V
    invoke-static {v1}, Lcom/android/contacts/ViewContactActivity;->access$100(Lcom/android/contacts/ViewContactActivity;)V

    .line 1306
    :cond_0
    return-void
.end method
