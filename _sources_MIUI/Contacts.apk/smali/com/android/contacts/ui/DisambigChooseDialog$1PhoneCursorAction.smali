.class Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;
.super Ljava/lang/Object;
.source "DisambigChooseDialog.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;
.implements Lcom/android/contacts/ui/DisambigChooseDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/DisambigChooseDialog;->buildActions(Landroid/content/Context;Landroid/database/Cursor;ZZ)[Lcom/android/contacts/ui/DisambigChooseDialog$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneCursorAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/ui/DisambigChooseDialog$Action;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;",
        ">;"
    }
.end annotation


# instance fields
.field public mDataUri:Landroid/net/Uri;

.field public mIntent:Landroid/content/Intent;

.field public mPhoneNumber:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->shouldCollapseWith(Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    check-cast p1, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->collapseWith(Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;)Z

    move-result v0

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;)Z
    .locals 6
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/phone_v2"

    .line 297
    if-nez p1, :cond_0

    move v1, v4

    .line 310
    :goto_0
    return v1

    .line 300
    :cond_0
    instance-of v1, p1, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;

    if-nez v1, :cond_1

    move v1, v4

    .line 301
    goto :goto_0

    .line 303
    :cond_1
    move-object v0, p1

    .line 305
    .local v0, other:Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;
    iget-object v1, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->val$context:Landroid/content/Context;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    iget-object v2, p0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v3, v0, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v5, v2, v5, v3}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 307
    goto :goto_0

    .line 310
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    check-cast p1, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;->shouldCollapseWith(Lcom/android/contacts/ui/DisambigChooseDialog$1PhoneCursorAction;)Z

    move-result v0

    return v0
.end method
