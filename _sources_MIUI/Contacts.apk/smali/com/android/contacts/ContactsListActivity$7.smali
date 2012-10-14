.class Lcom/android/contacts/ContactsListActivity$7;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity;->setupListView()V
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
    .line 1177
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 9
    .parameter "v"
    .parameter "checkable"

    .prologue
    const v4, 0x7f0b01b3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f07004c

    if-ne v2, v3, :cond_0

    .line 1181
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v1

    .line 1182
    .local v1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1244
    .end local v1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-void

    .line 1186
    .restart local v1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v2, v2, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x28200014

    if-ne v2, v3, :cond_3

    .line 1188
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1198
    :cond_2
    :goto_1
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/ContactsListActivity$7$1;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/ContactsListActivity$7$1;-><init>(Lcom/android/contacts/ContactsListActivity$7;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v2, v2, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x8a00004

    if-ne v2, v3, :cond_4

    .line 1191
    const v2, 0x7f0b0198

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1193
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v2, v2, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x28c0003a

    if-ne v2, v3, :cond_2

    .line 1194
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b6

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
