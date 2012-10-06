.class Lcom/android/contacts/PreviewVcardListActivity$3;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/PreviewVcardListActivity;->bindVcarItem(Landroid/pim/vcard/VCardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$3;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/contacts/PreviewVcardListActivity$3;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mContactEntryPreviewViewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/PreviewVcardListActivity;->access$1600(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 881
    .local v1, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    if-eqz v1, :cond_0

    .line 882
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 883
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 885
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/PreviewVcardListActivity$3;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/PreviewVcardListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 886
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 887
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "PreviewVcardListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
