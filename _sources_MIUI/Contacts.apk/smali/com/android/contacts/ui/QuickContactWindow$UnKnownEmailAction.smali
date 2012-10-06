.class Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;
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
    name = "UnKnownEmailAction"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "email"

    .prologue
    const/4 v2, 0x0

    const-string v3, "email"

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1168
    :cond_0
    return-void

    .line 1155
    :cond_1
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    .line 1157
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1159
    :cond_2
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mailto"

    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1162
    :cond_3
    iput-object v2, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->collapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, Lcom/android/contacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$UnKnownEmailAction;->shouldCollapseWith(Lcom/android/contacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
