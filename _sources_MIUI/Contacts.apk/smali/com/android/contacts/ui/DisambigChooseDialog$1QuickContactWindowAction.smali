.class Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;
.super Ljava/lang/Object;
.source "DisambigChooseDialog.java"

# interfaces
.implements Lcom/android/contacts/ui/DisambigChooseDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/DisambigChooseDialog;->buildActions(Ljava/util/Collection;)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickContactWindowAction"
.end annotation


# instance fields
.field private mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/QuickContactWindow$Action;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;->mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;

    .line 354
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;->mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;

    invoke-interface {v0}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;->mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;

    invoke-interface {v0}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;->mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;

    invoke-interface {v0}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1QuickContactWindowAction;->mAction:Lcom/android/contacts/ui/QuickContactWindow$Action;

    invoke-interface {v0}, Lcom/android/contacts/ui/QuickContactWindow$Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
