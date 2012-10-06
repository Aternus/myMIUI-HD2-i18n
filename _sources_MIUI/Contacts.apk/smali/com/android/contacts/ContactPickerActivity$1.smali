.class Lcom/android/contacts/ContactPickerActivity$1;
.super Ljava/lang/Object;
.source "ContactPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactPickerActivity;->setSingleContactResult(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactPickerActivity;

.field final synthetic val$adapter:Lcom/android/contacts/ContactPreviewAdapter;

.field final synthetic val$mSections:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactPickerActivity;Ljava/util/ArrayList;Lcom/android/contacts/ContactPreviewAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity$1;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iput-object p2, p0, Lcom/android/contacts/ContactPickerActivity$1;->val$mSections:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/ContactPickerActivity$1;->val$adapter:Lcom/android/contacts/ContactPreviewAdapter;

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
    .line 416
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity$1;->val$mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    iget-boolean v0, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    .line 417
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity$1;->val$mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    .line 418
    iget-object v1, p0, Lcom/android/contacts/ContactPickerActivity$1;->val$adapter:Lcom/android/contacts/ContactPreviewAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPreviewAdapter;->notifyDataSetChanged()V

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
