.class Lcom/android/phone/SimContacts$TextChangeListener;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextChangeListener"
.end annotation


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter "dialog"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/phone/SimContacts$TextChangeListener;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/android/phone/SimContacts$TextChangeListener;->mDialog:Landroid/app/AlertDialog;

    .line 415
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 429
    const/4 v0, 0x1

    .line 430
    .local v0, enablePositiveButton:Z
    iget-object v1, p0, Lcom/android/phone/SimContacts$TextChangeListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$500(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SimContacts$TextChangeListener;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/SimContacts;->access$600(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 431
    :cond_0
    const/4 v0, 0x0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SimContacts$TextChangeListener;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 420
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 425
    return-void
.end method
