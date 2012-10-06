.class Lcom/android/contacts/ui/widget/GenericEditorView$4;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

.field final synthetic val$validTypes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/GenericEditorView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object p2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->val$validTypes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 404
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->val$validTypes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 405
    .local v0, selected:Lcom/android/contacts/model/ContactsSource$EditType;
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #setter for: Lcom/android/contacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {v1, v0}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$002(Lcom/android/contacts/ui/widget/GenericEditorView;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/ContactsSource$EditType;

    .line 411
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/contacts/ui/widget/GenericEditorView;->createCustomDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$300(Lcom/android/contacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    .line 415
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v3, v3, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v3, v3, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 416
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildLabel()V
    invoke-static {v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$100(Lcom/android/contacts/ui/widget/GenericEditorView;)V

    .line 417
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildValues()V
    invoke-static {v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$400(Lcom/android/contacts/ui/widget/GenericEditorView;)V

    .line 418
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$4;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_0
.end method
