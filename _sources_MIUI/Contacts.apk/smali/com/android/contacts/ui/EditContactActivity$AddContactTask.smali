.class Lcom/android/contacts/ui/EditContactActivity$AddContactTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/accounts/Account;",
        "Lcom/android/contacts/ui/EditContactActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1782
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$AddContactTask;->doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Ljava/lang/Void;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Ljava/lang/Void;)[Landroid/accounts/Account;
    .locals 1
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1787
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ui/EditContactActivity;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "target"
    .parameter "accounts"

    .prologue
    .line 1792
    invoke-virtual {p1, p2}, Lcom/android/contacts/ui/EditContactActivity;->selectAccountAndCreateContact([Landroid/accounts/Account;)V

    .line 1793
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, [Landroid/accounts/Account;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$AddContactTask;->onPostExecute(Lcom/android/contacts/ui/EditContactActivity;[Landroid/accounts/Account;)V

    return-void
.end method
