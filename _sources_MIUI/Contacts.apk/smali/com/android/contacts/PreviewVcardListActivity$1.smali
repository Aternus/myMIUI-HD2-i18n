.class Lcom/android/contacts/PreviewVcardListActivity$1;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/PreviewVcardListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 153
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$1;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 156
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity$1;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$1;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mEntryList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$000(Lcom/android/contacts/PreviewVcardListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry;

    const/4 v2, 0x1

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->goToVcardSingleItem(Landroid/pim/vcard/VCardEntry;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/contacts/PreviewVcardListActivity;->access$100(Lcom/android/contacts/PreviewVcardListActivity;Landroid/pim/vcard/VCardEntry;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$1;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void
.end method
