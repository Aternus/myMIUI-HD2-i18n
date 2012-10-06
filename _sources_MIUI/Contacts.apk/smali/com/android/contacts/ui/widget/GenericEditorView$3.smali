.class Lcom/android/contacts/ui/widget/GenericEditorView$3;
.super Landroid/widget/ArrayAdapter;
.source "GenericEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/model/ContactsSource$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/GenericEditorView;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 381
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/ContactsSource$EditType;>;"
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object p5, p0, Lcom/android/contacts/ui/widget/GenericEditorView$3;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView$3;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030017

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/widget/GenericEditorView$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 389
    .local v2, type:Lcom/android/contacts/model/ContactsSource$EditType;
    const v3, 0x7f070075

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    .local v1, textView:Landroid/widget/TextView;
    const v3, 0x7f070074

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 391
    .local v0, labelView:Landroid/widget/ImageView;
    iget v3, v2, Lcom/android/contacts/model/ContactsSource$EditType;->labelRes:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$200(Lcom/android/contacts/ui/widget/GenericEditorView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10300b2

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 394
    iget v3, v2, Lcom/android/contacts/model/ContactsSource$EditType;->labelIconRes:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    return-object p2
.end method
