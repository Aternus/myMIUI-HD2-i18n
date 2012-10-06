.class public Lcom/android/contacts/model/vcard/exception/VCardAgentNotSupportedException;
.super Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;
.source "VCardAgentNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
