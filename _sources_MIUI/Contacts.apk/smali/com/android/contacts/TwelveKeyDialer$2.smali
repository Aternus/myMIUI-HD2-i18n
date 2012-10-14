.class Lcom/android/contacts/TwelveKeyDialer$2;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 10
    .parameter "v"
    .parameter "checkable"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f07004c

    if-ne v4, v5, :cond_0

    .line 571
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v3

    .line 572
    .local v3, positions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    .end local v3           #positions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 575
    .restart local v3       #positions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dialer_click_setting"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v1, v9

    .line 577
    .local v1, byNumber:Z
    :goto_1
    if-eqz v1, :cond_3

    const v4, 0x7f0b019a

    move v2, v4

    .line 579
    .local v2, idMessage:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0198

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v5}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/contacts/TwelveKeyDialer$2$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/contacts/TwelveKeyDialer$2$1;-><init>(Lcom/android/contacts/TwelveKeyDialer$2;ZLjava/util/HashSet;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #byNumber:Z
    .end local v2           #idMessage:I
    :cond_2
    move v1, v8

    .line 575
    goto :goto_1

    .line 577
    .restart local v1       #byNumber:Z
    :cond_3
    const v4, 0x7f0b0199

    move v2, v4

    goto :goto_2
.end method
