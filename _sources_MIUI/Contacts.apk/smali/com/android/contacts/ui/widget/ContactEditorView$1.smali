.class Lcom/android/contacts/ui/widget/ContactEditorView$1;
.super Ljava/lang/Object;
.source "ContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/ContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/ui/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/ContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/ContactEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/contacts/ui/widget/ContactEditorView$1;->this$0:Lcom/android/contacts/ui/widget/ContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 219
    if-eqz p2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView$1;->this$0:Lcom/android/contacts/ui/widget/ContactEditorView;

    #getter for: Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->access$000(Lcom/android/contacts/ui/widget/ContactEditorView;)Lcom/android/contacts/ui/widget/GenericEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView$1;->this$0:Lcom/android/contacts/ui/widget/ContactEditorView;

    #getter for: Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->access$100(Lcom/android/contacts/ui/widget/ContactEditorView;)Lcom/android/contacts/ui/widget/GenericEditorView;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView$1;->this$0:Lcom/android/contacts/ui/widget/ContactEditorView;

    #getter for: Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->access$000(Lcom/android/contacts/ui/widget/ContactEditorView;)Lcom/android/contacts/ui/widget/GenericEditorView;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 227
    :cond_0
    return-void
.end method
