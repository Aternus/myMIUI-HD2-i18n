.class public Lcom/android/contacts/model/ContactItemTypeSource;
.super Ljava/lang/Object;
.source "ContactItemTypeSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/ContactItemTypeSource$Item;
    }
.end annotation


# static fields
.field private static final sList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/ContactItemTypeSource$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f0200e2

    const v8, 0x1040270

    const v5, 0x104025d

    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/phone_v2"

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditType;

    const/4 v3, 0x2

    const v4, 0x7f0200eb

    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    const v3, 0x7f0200eb

    invoke-direct {v1, v7, v2, v3, v5}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditType;

    const/4 v3, 0x1

    const v4, 0x7f0b0133

    const v5, 0x7f0200e9

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    const v3, 0x7f0200e9

    const v4, 0x7f0b0133

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditType;

    const/4 v3, 0x4

    const v4, 0x7f0b0134

    const v5, 0x7f0200e5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    const v3, 0x7f0200e5

    const v4, 0x7f0b0134

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/sip_address"

    const v3, 0x7f0200f5

    const v4, 0x7f0b017e

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/nickname"

    const v3, 0x7f0200ed

    const v4, 0x7f0b00ad

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/email_v2"

    const v3, 0x7f0200e4

    const v4, 0x7f0b00e3

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const v3, 0x7f0200ea

    const v4, 0x7f0b003e

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/contact_event"

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditType;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v8, v9}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    invoke-direct {v1, v2, v3, v9, v8}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/website"

    const v3, 0x7f0200f8

    const v4, 0x7f0b00af

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/im"

    const v3, 0x7f0200f3

    const v4, 0x7f0b003d

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactItemTypeSource$Item;

    const-string v2, "vnd.android.cursor.item/note"

    const v3, 0x7f0200f0

    const v4, 0x7f0b0036

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/model/ContactItemTypeSource$Item;-><init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/ContactItemTypeSource$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/android/contacts/model/ContactItemTypeSource;->sList:Ljava/util/List;

    return-object v0
.end method
