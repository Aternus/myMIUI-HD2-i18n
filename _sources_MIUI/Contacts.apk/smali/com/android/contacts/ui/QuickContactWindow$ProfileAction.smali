.class Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/contacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileAction"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "lookupUri"

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput-object p1, p0, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;->mContext:Landroid/content/Context;

    .line 1224
    iput-object p2, p0, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;->mLookupUri:Landroid/net/Uri;

    .line 1225
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1218
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;->collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1251
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    const-string v0, "vnd.android.cursor.item/contact"

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1271
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1218
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ProfileAction;->shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
