.class Lcom/android/contacts/ui/widget/GenericEditorView$1;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/GenericEditorView;->builedFieldView(Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/ui/ViewIdGenerator;I)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

.field final synthetic val$column:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/GenericEditorView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$1;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object p2, p0, Lcom/android/contacts/ui/widget/GenericEditorView$1;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView$1;->this$0:Lcom/android/contacts/ui/widget/GenericEditorView;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView$1;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 318
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 321
    return-void
.end method
