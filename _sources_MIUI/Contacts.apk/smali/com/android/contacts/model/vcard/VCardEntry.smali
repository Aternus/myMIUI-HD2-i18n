.class public Lcom/android/contacts/model/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/vcard/VCardEntry$1;,
        Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/contacts/model/vcard/VCardEntry$SipData;,
        Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;,
        Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;,
        Lcom/android/contacts/model/vcard/VCardEntry$NoteData;,
        Lcom/android/contacts/model/vcard/VCardEntry$NicknameData;,
        Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;,
        Lcom/android/contacts/model/vcard/VCardEntry$ImData;,
        Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;,
        Lcom/android/contacts/model/vcard/VCardEntry$PostalData;,
        Lcom/android/contacts/model/vcard/VCardEntry$EmailData;,
        Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;,
        Lcom/android/contacts/model/vcard/VCardEntry$NameData;,
        Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;,
        Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    }
.end annotation


# static fields
.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccounts:[Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1758
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Lcom/android/contacts/model/vcard/VCardEntry;-><init>(I)V

    .line 1759
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 1762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry;-><init>(I[Landroid/accounts/Account;)V

    .line 1763
    return-void
.end method

.method public constructor <init>(I[Landroid/accounts/Account;)V
    .locals 1
    .parameter "vcardType"
    .parameter "accounts"

    .prologue
    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    .line 1766
    iput p1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    .line 1767
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAccounts:[Landroid/accounts/Account;

    .line 1768
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/android/contacts/model/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1830
    return-void
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "propValue"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 1972
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    return-void
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "organizationName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 1849
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2
    .parameter "nickName"

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/android/contacts/model/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1977
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/android/contacts/model/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1771
    iget-object v9, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v9, :cond_0

    .line 1772
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 1774
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1775
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1777
    .local v8, trimmed:Ljava/lang/String;
    const/4 v9, 0x6

    if-eq p1, v9, :cond_1

    iget v9, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/contacts/model/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1778
    :cond_1
    move-object v2, v8

    .line 1807
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_0
    new-instance v7, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;

    invoke-direct {v7, v2, p1, p3, p4}, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1808
    .local v7, phoneData:Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;
    iget-object v9, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    return-void

    .line 1784
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v7           #phoneData:Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;
    :cond_2
    const/4 v4, 0x0

    .line 1785
    .local v4, hasPauseOrWait:Z
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1786
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_a

    .line 1787
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1789
    .local v1, ch:C
    const/16 v9, 0x70

    if-eq v1, v9, :cond_3

    const/16 v9, 0x50

    if-ne v1, v9, :cond_5

    .line 1790
    :cond_3
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1791
    const/4 v4, 0x1

    .line 1786
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1792
    :cond_5
    const/16 v9, 0x77

    if-eq v1, v9, :cond_6

    const/16 v9, 0x57

    if-ne v1, v9, :cond_7

    .line 1793
    :cond_6
    const/16 v9, 0x3b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1794
    const/4 v4, 0x1

    goto :goto_2

    .line 1795
    :cond_7
    const/16 v9, 0x30

    if-gt v9, v1, :cond_8

    const/16 v9, 0x39

    if-le v1, v9, :cond_9

    :cond_8
    if-nez v5, :cond_4

    const/16 v9, 0x2b

    if-ne v1, v9, :cond_4

    .line 1796
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1799
    .end local v1           #ch:C
    :cond_a
    if-nez v4, :cond_b

    .line 1800
    iget v9, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/contacts/model/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v3

    .line 1801
    .local v3, formattingType:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/contacts/model/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1803
    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0

    .line 1804
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v3           #formattingType:I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 1983
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1984
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 1986
    :cond_0
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 1987
    .local v0, photoData:Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1988
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1833
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/contacts/model/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    return-void
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .parameter "sipData"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/contacts/model/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    return-void
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1857
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1858
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1859
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1860
    const-string v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1866
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1867
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1868
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1870
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1872
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2478
    const/4 v6, 0x0

    .line 2480
    .local v6, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1300(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2481
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1300(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 2497
    .end local p0
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 2498
    const-string v6, ""

    .line 2500
    :cond_1
    return-object v6

    .line 2482
    .restart local p0
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2483
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1200(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1000(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1100(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$900(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$800(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2485
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2486
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$500(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$600(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$700(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/model/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2488
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2489
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/vcard/VCardEntry$EmailData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/model/vcard/VCardEntry$EmailData;->access$1500(Lcom/android/contacts/model/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2490
    .restart local p0
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2491
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->access$1600(Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2492
    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2493
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2494
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    invoke-virtual {p0}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2467
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2472
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 2036
    invoke-direct {p0, p2}, Lcom/android/contacts/model/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2040
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v3, :cond_1

    .line 2060
    .end local v0           #size:I
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2043
    .restart local v0       #size:I
    .restart local p0
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 2044
    const/4 v0, 0x5

    .line 2047
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 2058
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1202(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2050
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$802(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2052
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$902(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2054
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1002(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2056
    :pswitch_3
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1102(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2047
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 14
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1885
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 1886
    .local v6, phoneticName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1887
    sget-object p2, Lcom/android/contacts/model/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1891
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 1892
    .local v13, size:I
    packed-switch v13, :pswitch_data_0

    .line 1904
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1907
    .local v3, organizationName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1908
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 1909
    const/4 v2, 0x1

    if-le v10, v2, :cond_1

    .line 1910
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1912
    :cond_1
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1894
    .end local v3           #organizationName:Ljava/lang/String;
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_0
    const-string v3, ""

    .line 1895
    .restart local v3       #organizationName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1917
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v4, departmentName:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 1920
    const/4 v5, 0x0

    move-object v2, p0

    move v7, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/contacts/model/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1940
    :goto_2
    return-void

    .line 1899
    .end local v3           #organizationName:Ljava/lang/String;
    .end local v4           #departmentName:Ljava/lang/String;
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1900
    .restart local v3       #organizationName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1901
    .restart local v4       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 1914
    .end local v4           #departmentName:Ljava/lang/String;
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .restart local v9       #builder:Ljava/lang/StringBuilder;
    .restart local v10       #i:I
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 1924
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    .line 1927
    .local v12, organizationData:Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$100(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$200(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1931
    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v12, v3}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$102(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v12, v4}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$202(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1933
    move-object v0, v12

    move/from16 v1, p4

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z
    invoke-static {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$302(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Z)Z

    goto :goto_2

    .line 1939
    .end local v12           #organizationData:Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
    :cond_5
    const/4 v5, 0x0

    move-object v2, p0

    move v7, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/contacts/model/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2070
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$500(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$600(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$700(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2127
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2079
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    if-lt v4, v8, :cond_0

    .line 2086
    if-le v4, v10, :cond_2

    .line 2087
    const/4 v4, 0x3

    .line 2090
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 2091
    const/4 v3, 0x1

    .line 2092
    .local v3, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 2093
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 2094
    const/4 v3, 0x0

    .line 2098
    :cond_3
    if-eqz v3, :cond_7

    .line 2099
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2100
    .local v2, namesArray:[Ljava/lang/String;
    array-length v1, v2

    .line 2101
    .local v1, nameArrayLength:I
    if-ne v1, v10, :cond_5

    .line 2103
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2104
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$602(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2105
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    aget-object v6, v2, v9

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2092
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2106
    .restart local v1       #nameArrayLength:I
    .restart local v2       #namesArray:[Ljava/lang/String;
    :cond_5
    if-ne v1, v9, :cond_6

    .line 2109
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2110
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2112
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2118
    .end local v0           #i:I
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    .end local v3           #onlyFirstElemIsNonEmpty:Z
    .restart local p0
    :cond_7
    packed-switch v4, :pswitch_data_0

    .line 2125
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2121
    .restart local p0
    :pswitch_0
    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$602(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2123
    :pswitch_1
    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2118
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .parameter "propValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2421
    .local p2, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    const-string v6, "sip:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2425
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2431
    :cond_2
    const/4 v3, -0x1

    .line 2432
    .local v3, type:I
    const/4 v2, 0x0

    .line 2433
    .local v2, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2434
    .local v1, isPrimary:Z
    if-eqz p2, :cond_8

    .line 2435
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2436
    .local v4, typeStringOrg:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2437
    .local v5, typeStringUpperCase:Ljava/lang/String;
    const-string v6, "PREF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2438
    const/4 v1, 0x1

    goto :goto_1

    .line 2439
    :cond_4
    const-string v6, "HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2440
    const/4 v3, 0x1

    goto :goto_1

    .line 2441
    :cond_5
    const-string v6, "WORK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2442
    const/4 v3, 0x2

    goto :goto_1

    .line 2443
    :cond_6
    if-gez v3, :cond_3

    .line 2444
    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2445
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2449
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 2447
    :cond_7
    move-object v2, v4

    goto :goto_2

    .line 2453
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #typeStringOrg:Ljava/lang/String;
    .end local v5           #typeStringUpperCase:Ljava/lang/String;
    :cond_8
    if-gez v3, :cond_9

    .line 2454
    const/4 v3, 0x3

    .line 2456
    :cond_9
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1950
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1953
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1965
    :goto_0
    return-void

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    .line 1957
    .local v8, organizationData:Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$400(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1958
    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v8, p1}, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->access$402(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v8           #organizationData:Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
    :cond_2
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1964
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V
    .locals 3
    .parameter
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1622
    .local p1, elemList:Ljava/util/List;,"Ljava/util/List<+Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1623
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;

    invoke-interface {p0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V

    .line 1624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;

    .line 1625
    .local v0, elem:Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 1627
    .end local v0           #elem:Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;
    :cond_0
    invoke-interface {p2}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1629
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 2622
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2623
    .local v3, size:I
    if-le v3, v6, :cond_2

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2625
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2626
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2627
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_0

    .line 2629
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2632
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2636
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_1
    return-object v5

    .line 2633
    .restart local p0
    :cond_2
    if-ne v3, v6, :cond_3

    .line 2634
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    .line 2636
    .restart local p0
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private setDefaultAccounts(Landroid/content/ContentResolver;Ljava/util/ArrayList;Landroid/accounts/Account;)V
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2563
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2567
    .local v6, backReferenceIndex:I
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2569
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v10, 0x0

    .line 2570
    .local v10, myGroupsId:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 2571
    const-string v0, "account_name"

    iget-object v1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2572
    const-string v0, "account_type"

    iget-object v1, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2574
    const-string v0, "account_name"

    iget-object v1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2575
    const-string v0, "account_type"

    iget-object v1, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2578
    const-string v0, "com.google"

    iget-object v1, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "title=? AND account_name=? AND account_type=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "System Group: My Contacts"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v5, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2584
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 2588
    :cond_0
    if-eqz v8, :cond_1

    .line 2589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2597
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2600
    .local v11, start:I
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v0, p0, p2, v6}, Lcom/android/contacts/model/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/contacts/model/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateAllData(Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 2602
    if-eqz v10, :cond_2

    .line 2603
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2604
    const-string v0, "raw_contact_id"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2605
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2606
    const-string v0, "data1"

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2607
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2611
    .local v9, end:I
    return-void

    .line 2588
    .end local v9           #end:I
    .end local v11           #start:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 2589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2594
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "account_name"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2595
    const-string v0, "account_type"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 2000
    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$500(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$600(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$700(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2030
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2007
    .restart local p0
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2008
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2009
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 2010
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Lcom/android/contacts/model/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2016
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2017
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 2018
    const/4 v0, 0x3

    .line 2020
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2026
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2022
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$602(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2024
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2020
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/android/contacts/model/vcard/VCardEntry;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2464
    return-void
.end method

.method public addProperty(Lcom/android/contacts/model/vcard/VCardProperty;)V
    .locals 31
    .parameter "property"

    .prologue
    .line 2130
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2131
    .local v21, propertyName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v16

    .line 2132
    .local v16, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v22

    .line 2133
    .local v22, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/vcard/VCardProperty;->getByteValue()[B

    move-result-object v20

    .line 2135
    .local v20, propertyBytes:[B
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-nez v20, :cond_2

    .line 2414
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 2139
    .restart local p1
    :cond_2
    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 2143
    .local v8, propValue:Ljava/lang/String;
    :goto_1
    const-string v5, "VERSION"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2145
    const-string v5, "FN"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1302(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2139
    .end local v8           #propValue:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move-object v8, v5

    goto :goto_1

    .line 2147
    .restart local v8       #propValue:Ljava/lang/String;
    :cond_4
    const-string v5, "NAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #getter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1300(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1302(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2153
    :cond_5
    const-string v5, "N"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2154
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 2155
    :cond_6
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$1402(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2157
    :cond_7
    const-string v5, "NICKNAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2159
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2160
    :cond_9
    const-string v5, "SOUND"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2161
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2162
    .local v23, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_1

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v8, v5}, Lcom/android/contacts/model/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    .line 2170
    .local v19, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2174
    .end local v19           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    const-string v5, "ADR"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2175
    const/16 v30, 0x1

    .line 2176
    .local v30, valuesAreAllEmpty:Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 2177
    .local v29, value:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2178
    const/16 v30, 0x0

    .line 2182
    .end local v29           #value:Ljava/lang/String;
    :cond_c
    if-nez v30, :cond_1

    .line 2186
    const/4 v9, -0x1

    .line 2187
    .local v9, type:I
    const/4 v15, 0x0

    .line 2188
    .local v15, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2189
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2190
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_13

    .line 2191
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2192
    .local v26, typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 2193
    .local v27, typeStringUpperCase:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2194
    const/4 v10, 0x1

    goto :goto_2

    .line 2195
    :cond_e
    const-string v5, "HOME"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2196
    const/4 v9, 0x1

    .line 2197
    const/4 v15, 0x0

    goto :goto_2

    .line 2198
    :cond_f
    const-string v5, "WORK"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "COMPANY"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2204
    :cond_10
    const/4 v9, 0x2

    .line 2205
    const/4 v15, 0x0

    goto :goto_2

    .line 2206
    :cond_11
    const-string v5, "PARCEL"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "DOM"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "INTL"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2210
    if-gez v9, :cond_d

    .line 2211
    const/4 v9, 0x0

    .line 2212
    const-string v5, "X-"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2213
    const/4 v5, 0x2

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 2215
    :cond_12
    move-object/from16 v15, v26

    goto :goto_2

    .line 2221
    .end local v26           #typeStringOrg:Ljava/lang/String;
    .end local v27           #typeStringUpperCase:Ljava/lang/String;
    :cond_13
    if-gez v9, :cond_14

    .line 2222
    const/4 v9, 0x1

    .line 2225
    :cond_14
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v22

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2226
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #label:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v30           #valuesAreAllEmpty:Z
    :cond_15
    const-string v5, "EMAIL"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2227
    const/4 v9, -0x1

    .line 2228
    .restart local v9       #type:I
    const/4 v15, 0x0

    .line 2229
    .restart local v15       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2230
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2231
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_1c

    .line 2232
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_16
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2233
    .restart local v26       #typeStringOrg:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 2234
    .restart local v27       #typeStringUpperCase:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2235
    const/4 v10, 0x1

    goto :goto_3

    .line 2236
    :cond_17
    const-string v5, "HOME"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2237
    const/4 v9, 0x1

    goto :goto_3

    .line 2238
    :cond_18
    const-string v5, "WORK"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2239
    const/4 v9, 0x2

    goto :goto_3

    .line 2240
    :cond_19
    const-string v5, "CELL"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2241
    const/4 v9, 0x4

    goto :goto_3

    .line 2242
    :cond_1a
    if-gez v9, :cond_16

    .line 2243
    const-string v5, "X-"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2244
    const/4 v5, 0x2

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2248
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 2246
    :cond_1b
    move-object/from16 v15, v26

    goto :goto_4

    .line 2252
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v26           #typeStringOrg:Ljava/lang/String;
    .end local v27           #typeStringUpperCase:Ljava/lang/String;
    :cond_1c
    if-gez v9, :cond_1d

    .line 2253
    const/4 v9, 0x3

    .line 2255
    :cond_1d
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v8

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2256
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v15           #label:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1e
    const-string v5, "ORG"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2258
    const/4 v9, 0x1

    .line 2259
    .restart local v9       #type:I
    const/4 v10, 0x0

    .line 2260
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2261
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_20

    .line 2262
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1f
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2263
    .local v25, typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2264
    const/4 v10, 0x1

    goto :goto_5

    .line 2268
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v25           #typeString:Ljava/lang/String;
    :cond_20
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 2269
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_21
    const-string v5, "TITLE"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2270
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2271
    :cond_22
    const-string v5, "ROLE"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2274
    const-string v5, "PHOTO"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "LOGO"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2276
    :cond_23
    const-string v5, "VALUE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    .line 2277
    .local v17, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v17, :cond_24

    const-string v5, "URL"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2280
    :cond_24
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2281
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2282
    .local v12, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2283
    .restart local v10       #isPrimary:Z
    if-eqz v23, :cond_27

    .line 2284
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_25
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2285
    .local v28, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2286
    const/4 v10, 0x1

    goto :goto_6

    .line 2287
    :cond_26
    if-nez v12, :cond_25

    .line 2288
    move-object/from16 v12, v28

    goto :goto_6

    .line 2292
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v28           #typeValue:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v20

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 2294
    .end local v10           #isPrimary:Z
    .end local v12           #formatName:Ljava/lang/String;
    .end local v17           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_28
    const-string v5, "TEL"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2295
    const/16 v18, 0x0

    .line 2296
    .local v18, phoneNumber:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2297
    .local v14, isSip:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2300
    const-string v5, "sip:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2301
    const/4 v14, 0x1

    .line 2314
    :goto_7
    if-eqz v14, :cond_2c

    .line 2315
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2316
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2302
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_29
    const-string v5, "tel:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2303
    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 2308
    :cond_2a
    move-object/from16 v18, v8

    goto :goto_7

    .line 2311
    :cond_2b
    move-object/from16 v18, v8

    goto :goto_7

    .line 2318
    :cond_2c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2322
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2323
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/contacts/model/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 2327
    .local v24, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_2d

    .line 2328
    check-cast v24, Ljava/lang/Integer;

    .end local v24           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2329
    .restart local v9       #type:I
    const/4 v15, 0x0

    .line 2336
    .restart local v15       #label:Ljava/lang/String;
    :goto_8
    if-eqz v23, :cond_2e

    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2338
    const/4 v10, 0x1

    .line 2343
    .restart local v10       #isPrimary:Z
    :goto_9
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v18

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2331
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v15           #label:Ljava/lang/String;
    .restart local v24       #typeObject:Ljava/lang/Object;
    :cond_2d
    const/4 v9, 0x0

    .line 2332
    .restart local v9       #type:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #label:Ljava/lang/String;
    goto :goto_8

    .line 2340
    .end local v24           #typeObject:Ljava/lang/Object;
    :cond_2e
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_9

    .line 2345
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #isSip:Z
    .end local v15           #label:Ljava/lang/String;
    .end local v18           #phoneNumber:Ljava/lang/String;
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2f
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2347
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2348
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v9, 0x7

    .line 2350
    .restart local v9       #type:I
    if-eqz v23, :cond_30

    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2352
    const/4 v10, 0x1

    .line 2356
    .restart local v10       #isPrimary:Z
    :goto_a
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v8

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2354
    .end local v10           #isPrimary:Z
    :cond_30
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_a

    .line 2357
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_31
    sget-object v5, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2358
    sget-object v5, Lcom/android/contacts/model/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2359
    .local v6, protocol:I
    const/4 v10, 0x0

    .line 2360
    .restart local v10       #isPrimary:Z
    const/4 v9, -0x1

    .line 2361
    .restart local v9       #type:I
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2362
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_35

    .line 2363
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_32
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2364
    .restart local v25       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2365
    const/4 v10, 0x1

    goto :goto_b

    .line 2366
    :cond_33
    if-gez v9, :cond_32

    .line 2367
    const-string v5, "HOME"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2368
    const/4 v9, 0x1

    goto :goto_b

    .line 2369
    :cond_34
    const-string v5, "WORK"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2370
    const/4 v9, 0x2

    goto :goto_b

    .line 2375
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v25           #typeString:Ljava/lang/String;
    :cond_35
    if-gez v9, :cond_36

    .line 2376
    const/4 v9, 0x1

    .line 2378
    :cond_36
    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/model/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 2379
    .end local v6           #protocol:I
    .end local v9           #type:I
    .end local v10           #isPrimary:Z
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1
    :cond_37
    const-string v5, "NOTE"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2380
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2381
    :cond_38
    const-string v5, "URL"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_39

    .line 2383
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 2385
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;

    invoke-direct {v6, v8}, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2386
    :cond_3a
    const-string v5, "BDAY"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2387
    new-instance v5, Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

    invoke-direct {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/vcard/VCardEntry;->mBirthday:Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 2388
    :cond_3b
    const-string v5, "ANNIVERSARY"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 2389
    new-instance v5, Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/vcard/VCardEntry;->mAnniversary:Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_0

    .line 2390
    :cond_3c
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2392
    :cond_3d
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$602(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2394
    :cond_3e
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v5, v0

    #setter for: Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2396
    :cond_3f
    const-string v5, "IMPP"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2398
    const-string v5, "sip:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2399
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2400
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2402
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_40
    const-string v5, "X-SIP"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2403
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2404
    const-string v5, "TYPE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 2405
    .restart local v23       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2407
    .end local v23           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_41
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/model/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v8, v5}, Lcom/android/contacts/model/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 2410
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/contacts/model/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public consolidateFields()V
    .locals 2

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/contacts/model/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2508
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2541
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p2, :cond_0

    .line 2542
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2545
    .restart local p2       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/vcard/VCardEntry;->isIgnorable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2559
    :cond_1
    :goto_0
    return-object p2

    .line 2549
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAccounts:[Landroid/accounts/Account;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-nez v4, :cond_4

    .line 2550
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/contacts/model/vcard/VCardEntry;->setDefaultAccounts(Landroid/content/ContentResolver;Ljava/util/ArrayList;Landroid/accounts/Account;)V

    goto :goto_0

    .line 2552
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2553
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAccounts:[Landroid/accounts/Account;

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 2554
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/model/vcard/VCardEntry;->setDefaultAccounts(Landroid/content/ContentResolver;Ljava/util/ArrayList;Landroid/accounts/Account;)V

    .line 2553
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/contacts/model/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .prologue
    .line 2519
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/contacts/model/vcard/VCardEntry;Lcom/android/contacts/model/vcard/VCardEntry$1;)V

    .line 2520
    .local v0, iterator:Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateAllData(Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 2521
    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v1

    return v1
.end method

.method public final iterateAllData(Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .parameter "iterator"

    .prologue
    .line 1590
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1591
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V

    .line 1592
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z

    .line 1593
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1595
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1596
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1597
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1598
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1599
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1600
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1601
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1602
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1603
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1604
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1605
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1607
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mBirthday:Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mBirthday:Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V

    .line 1609
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mBirthday:Lcom/android/contacts/model/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z

    .line 1610
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAnniversary:Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAnniversary:Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;)V

    .line 1614
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry;->mAnniversary:Lcom/android/contacts/model/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;)Z

    .line 1615
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1617
    :cond_1
    invoke-interface {p1}, Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 1618
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1752
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/contacts/model/vcard/VCardEntry;Lcom/android/contacts/model/vcard/VCardEntry$1;)V

    .line 1753
    .local v0, iterator:Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/vcard/VCardEntry;->iterateAllData(Lcom/android/contacts/model/vcard/VCardEntry$EntryElementIterator;)V

    .line 1754
    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
