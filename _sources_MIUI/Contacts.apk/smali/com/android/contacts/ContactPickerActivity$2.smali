.class Lcom/android/contacts/ContactPickerActivity$2;
.super Ljava/lang/Object;
.source "ContactPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$contactName:Ljava/lang/String;

.field final synthetic val$mSections:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactPickerActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity$2;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iput-object p2, p0, Lcom/android/contacts/ContactPickerActivity$2;->val$contactName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/ContactPickerActivity$2;->val$mSections:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 428
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v1, extra:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->val$contactName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 431
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v6, name:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->val$contactName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .end local v6           #name:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->val$mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 437
    .local v0, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    iget-boolean v7, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    if-eqz v7, :cond_1

    .line 438
    iget-object v7, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    iget-object v7, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v7, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 448
    .end local v0           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v7}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 450
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .line 453
    .end local v4           #key:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->this$0:Lcom/android/contacts/ContactPickerActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v3}, Lcom/android/contacts/ContactPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 454
    iget-object v7, p0, Lcom/android/contacts/ContactPickerActivity$2;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v7}, Lcom/android/contacts/ContactPickerActivity;->finish()V

    .line 455
    return-void
.end method
