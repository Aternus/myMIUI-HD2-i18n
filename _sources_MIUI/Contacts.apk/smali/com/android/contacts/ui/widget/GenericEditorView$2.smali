.class Lcom/android/contacts/ui/widget/GenericEditorView$2;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/GenericEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

.field final synthetic val$customType:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/GenericEditorView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object p2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->val$customType:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->val$customType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, customText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/contacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$000(Lcom/android/contacts/ui/widget/GenericEditorView;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    .line 353
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {v1, v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$002(Lcom/android/contacts/ui/widget/GenericEditorView;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/ContactsSource$EditType;

    .line 354
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v3, v3, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v3, v3, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 355
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildLabel()V
    invoke-static {v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->access$100(Lcom/android/contacts/ui/widget/GenericEditorView;)V

    .line 357
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 360
    :cond_0
    return-void
.end method
