.class public Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, accountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 75
    iput p3, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    .line 76
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v2, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/accounts/Account;

    invoke-static {v0, v1, p0}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILandroid/accounts/Account;)V

    .line 81
    return-void
.end method
