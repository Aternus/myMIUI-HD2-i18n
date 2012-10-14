.class final Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactListItemCache"
.end annotation


# instance fields
.field public dataBuffer:Landroid/database/CharArrayBuffer;

.field public highlightedTextBuffer:Landroid/database/CharArrayBuffer;

.field public labelBuffer:Landroid/database/CharArrayBuffer;

.field public nameBuffer:Landroid/database/CharArrayBuffer;

.field public textWithHighlighting:Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 3016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3017
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    .line 3018
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->dataBuffer:Landroid/database/CharArrayBuffer;

    .line 3019
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->highlightedTextBuffer:Landroid/database/CharArrayBuffer;

    .line 3021
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
