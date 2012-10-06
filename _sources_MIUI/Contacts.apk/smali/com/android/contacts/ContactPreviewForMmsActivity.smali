.class public Lcom/android/contacts/ContactPreviewForMmsActivity;
.super Landroid/app/Activity;
.source "ContactPreviewForMmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/android/contacts/ContactPreviewAdapter;

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field mWebEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNicknameEntries:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mImEntries:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mWebEntries:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    return-void
.end method

.method private initContactPreview()V
    .locals 14

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 168
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_f

    .line 171
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 172
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 174
    .local v3, entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, data:Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    invoke-direct {v2}, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;-><init>()V

    .line 177
    .local v2, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    iput-object v1, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 178
    iput-object v7, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 180
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 181
    const v9, 0x7f0200eb

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 182
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    iget-object v12, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 184
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "smsto"

    iget-object v12, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mSecondaryIntent:Landroid/content/Intent;

    .line 187
    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, location:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 190
    iput-object v8, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    .line 193
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v8           #location:Ljava/lang/String;
    :cond_3
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 195
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "mailto"

    iget-object v12, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 197
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const v9, 0x7f0200e4

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto :goto_0

    .line 199
    :cond_4
    const-string v9, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 200
    const v9, 0x7f0200ea

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 201
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 202
    :cond_5
    const-string v9, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 203
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const v9, 0x7f0200e1

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    goto/16 :goto_0

    .line 205
    :cond_6
    const-string v9, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 206
    const v9, 0x7f0200f9

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 207
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 208
    :cond_7
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 209
    const v9, 0x7f0200ed

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 210
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 211
    :cond_8
    const-string v9, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 212
    const v9, 0x7f0200f0

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 213
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v9, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 215
    const v9, 0x7f0200f8

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 216
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 217
    :cond_a
    const-string v9, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 218
    const v9, 0x7f0200e2

    iput v9, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    .line 219
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 220
    :cond_b
    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 221
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 228
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v3           #entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    :cond_c
    const v9, 0x7f0700c0

    invoke-virtual {p0, v9}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bundle:Landroid/os/Bundle;
    check-cast v0, Landroid/widget/ImageView;

    const v9, 0x10803b8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 233
    const v9, 0x7f0700c1

    invoke-virtual {p0, v9}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    iget-object v9, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_d
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    .line 238
    const v9, 0x7f0700c2

    invoke-virtual {p0, v9}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    iget-object v9, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v9, 0x7f0700c2

    invoke-virtual {p0, v9}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_e
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    new-instance v9, Lcom/android/contacts/ContactPreviewAdapter;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v10}, Lcom/android/contacts/ContactPreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mAdapter:Lcom/android/contacts/ContactPreviewAdapter;

    .line 253
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mList:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mAdapter:Lcom/android/contacts/ContactPreviewAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v9, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 257
    :cond_f
    return-void
.end method

.method private insertContact(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 14
    .parameter "account"

    .prologue
    .line 309
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 314
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v11, 0x0

    .line 315
    .local v11, myGroupsId:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 316
    const-string v0, "account_name"

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 317
    const-string v0, "account_type"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "title=? AND account_name=? AND account_type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "System Group: My Contacts"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 328
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 332
    :cond_0
    if-eqz v7, :cond_1

    .line 333
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 341
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 344
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 345
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 346
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 347
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    iget-object v1, p1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 348
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 353
    .local v9, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 354
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 355
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 357
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 358
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local p1
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 333
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 338
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "account_name"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    const-string v0, "account_type"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 362
    .end local p1
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 363
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 364
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 365
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 368
    const-string v0, "data2"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 369
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 370
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 374
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 376
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 377
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 378
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 379
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 380
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 381
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 385
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 387
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 388
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 389
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 391
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 392
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 393
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 397
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 399
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 400
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 401
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 403
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 404
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 405
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 409
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 410
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 411
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 412
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 413
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 415
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 416
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 420
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 421
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 422
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 423
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 424
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 425
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 426
    const-string v0, "data2"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 427
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 431
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 432
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 433
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 434
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 435
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 436
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 441
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 442
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 443
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 444
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 445
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 447
    const-string v0, "data2"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 448
    const-string v0, "data1"

    iget-object v1, v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 449
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 453
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_d
    if-eqz v11, :cond_e

    .line 454
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 455
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 456
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 457
    const-string v0, "data1"

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 458
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_e
    :try_start_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v13

    .line 467
    .local v13, results:[Landroid/content/ContentProviderResult;
    if-eqz v13, :cond_f

    array-length v0, v13

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    aget-object v0, v13, v0

    if-nez v0, :cond_10

    :cond_f
    const/4 v0, 0x0

    .line 475
    .end local v13           #results:[Landroid/content/ContentProviderResult;
    :goto_a
    return-object v0

    .line 467
    .restart local v13       #results:[Landroid/content/ContentProviderResult;
    :cond_10
    const/4 v0, 0x0

    aget-object v0, v13, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 470
    .end local v13           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 471
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "ContactPreviewForMmsActivity"

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    goto :goto_a

    .line 473
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 474
    .local v8, e:Landroid/content/OperationApplicationException;
    const-string v0, "ContactPreviewForMmsActivity"

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private selectAccountAndCreateContact()V
    .locals 20

    .prologue
    .line 115
    const/4 v14, 0x0

    .line 117
    .local v14, uri:Landroid/net/Uri;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    .line 118
    .local v4, accounts:[Landroid/accounts/Account;
    if-eqz v4, :cond_0

    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 119
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPreviewForMmsActivity;->insertContact(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v14

    .line 128
    :cond_1
    if-eqz v14, :cond_6

    .line 129
    const v17, 0x7f0b0124

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 132
    .local v12, rawContactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v6

    .line 135
    .local v6, contactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 136
    .local v9, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 137
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v15, values:Landroid/content/ContentValues;
    const-string v17, "number"

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v17, "type"

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v17, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v17, "duration"

    const-string v18, "-1"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v17, "new"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    move-object v0, v3

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 145
    const-string v17, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mNameEntries:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    move-object v0, v3

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    const-string v17, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 122
    .end local v6           #contactId:J
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #rawContactId:J
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_3
    move-object v5, v4

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v3, v5, v10

    .line 123
    .local v3, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactPreviewForMmsActivity;->insertContact(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v14

    .line 122
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 147
    .end local v3           #account:Landroid/accounts/Account;
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v11           #len$:I
    .restart local v6       #contactId:J
    .restart local v9       #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .local v10, i$:Ljava/util/Iterator;
    .restart local v12       #rawContactId:J
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_4
    const-string v17, "name"

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v9           #entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 159
    .local v8, contactUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v16, viewIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPreviewForMmsActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->finish()V

    .line 164
    .end local v6           #contactId:J
    .end local v8           #contactUri:Landroid/net/Uri;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #rawContactId:J
    .end local v16           #viewIntent:Landroid/content/Intent;
    :cond_6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 106
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->selectAccountAndCreateContact()V

    goto :goto_0

    .line 109
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->finish()V

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x7f07004e -> :sswitch_1
        0x7f0700c5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->setContentView(I)V

    .line 91
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 92
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 94
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mList:Landroid/widget/ListView;

    .line 96
    invoke-direct {p0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->initContactPreview()V

    .line 98
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactPreviewForMmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "bad menuInfo"

    const-string v5, "ContactPreviewForMmsActivity"

    .line 279
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 287
    const-string v4, "ContactPreviewForMmsActivity"

    const-string v4, "bad menuInfo"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "ContactPreviewForMmsActivity"

    const-string v4, "bad menuInfo"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 291
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 293
    .local v2, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    if-eqz v2, :cond_0

    .line 297
    const v4, 0x7f0b002c

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 299
    iget-object v4, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    const v4, 0x7f0b001d

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 301
    const v4, 0x7f0b001e

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mSecondaryIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 302
    :cond_2
    iget-object v4, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const v4, 0x7f0b001f

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/contacts/ContactPreviewForMmsActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 263
    .local v1, entry:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    if-eqz v1, :cond_0

    .line 264
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIntent:Landroid/content/Intent;

    .line 265
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactPreviewForMmsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ContactPreviewForMmsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
