.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardFile"
.end annotation


# instance fields
.field private final mCanonicalPath:Ljava/lang/String;

.field private final mLastModified:J

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "canonicalPath"
    .parameter "lastModified"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    .line 136
    iput-wide p3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mLastModified:J

    .line 137
    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mLastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method
