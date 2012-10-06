.class public Lcom/miui/milk/adapter/contact/AddressBookToAddressBook2NoSync;
.super Ljava/lang/Object;
.source "AddressBookToAddressBook2NoSync.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromProtobuf(Ljava/io/File;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 7
    .parameter "importFile"

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .local v0, input:Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object p0

    .line 29
    .local p0, addressBook:Lcom/miui/milk/model/ContactProtos$AddressBook;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 31
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    .line 33
    .local v0, addressBook2:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/ContactProtos$Group;

    .line 34
    .local v1, group:Lcom/miui/milk/model/ContactProtos$Group;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v2

    .line 35
    .local v2, group2:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getGuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getLuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getLuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 42
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getDeleted()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 44
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getNotes()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 50
    :cond_3
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 53
    :cond_4
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getGroupVisible()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupVisible(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 54
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Group;->getGroupOrder()I

    move-result v1

    .end local v1           #group:Lcom/miui/milk/model/ContactProtos$Group;
    invoke-virtual {v2, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupOrder(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 56
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group$Builder;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0           #addressBook2:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .end local v2           #group2:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local p0           #addressBook:Lcom/miui/milk/model/ContactProtos$AddressBook;
    :catch_0
    move-exception p0

    .line 181
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/4 p0, 0x0

    .end local p0           #e:Ljava/io/IOException;
    :goto_1
    return-object p0

    .line 59
    .restart local v0       #addressBook2:Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .restart local v3       #i$:Ljava/util/Iterator;
    .local p0, addressBook:Lcom/miui/milk/model/ContactProtos$AddressBook;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->getContactList()Ljava/util/List;

    move-result-object p0

    .end local p0           #addressBook:Lcom/miui/milk/model/ContactProtos$AddressBook;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v3           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Contact;

    .line 60
    .local p0, contact:Lcom/miui/milk/model/ContactProtos$Contact;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v1

    .line 61
    .local v1, contact2:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 62
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 64
    :cond_6
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getLuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 65
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getLuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 67
    :cond_7
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 68
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getDeleted()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 70
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getName()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v2

    .line 71
    .local v2, name:Lcom/miui/milk/model/ContactProtos$Name;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v3

    .line 72
    .local v3, name2:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 73
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Name;->getGivenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 74
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 75
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    .end local v2           #name:Lcom/miui/milk/model/ContactProtos$Name;
    invoke-virtual {v3, v2}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 76
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 78
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #name2:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Phone;

    .line 79
    .local v3, phone:Lcom/miui/milk/model/ContactProtos$Phone;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v5

    .line 80
    .local v5, phone2:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Phone;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 81
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Phone;->getType()Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 82
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Phone;->getLabel()Ljava/lang/String;

    move-result-object v3

    .end local v3           #phone:Lcom/miui/milk/model/ContactProtos$Phone;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 83
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_3

    .line 86
    .end local v5           #phone2:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    :cond_8
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getEmailList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos$Email;

    .line 87
    .local v2, email:Lcom/miui/milk/model/ContactProtos$Email;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Email;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    move-result-object v3

    .line 88
    .local v3, email2:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Email;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 89
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Email;->getType()Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->getNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 90
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Email;->getLabel()Ljava/lang/String;

    move-result-object v2

    .end local v2           #email:Lcom/miui/milk/model/ContactProtos$Email;
    invoke-virtual {v3, v2}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 91
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_4

    .line 94
    .end local v3           #email2:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    :cond_9
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos$Event;

    .line 95
    .local v2, event:Lcom/miui/milk/model/ContactProtos$Event;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v3

    .line 96
    .local v3, event2:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Event;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 97
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Event;->getType()Lcom/miui/milk/model/ContactProtos$Event$EventType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Event$EventType;->getNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 98
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Event;->getLabel()Ljava/lang/String;

    move-result-object v2

    .end local v2           #event:Lcom/miui/milk/model/ContactProtos$Event;
    invoke-virtual {v3, v2}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 99
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_5

    .line 102
    .end local v3           #event2:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    :cond_a
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getImList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v5           #i$:Ljava/util/Iterator;
    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Im;

    .line 103
    .local v3, im:Lcom/miui/milk/model/ContactProtos$Im;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v5

    .line 104
    .local v5, im2:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Im;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 105
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Im;->getType()Lcom/miui/milk/model/ContactProtos$Im$ImType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Im$ImType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 106
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Im;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 107
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Im;->getProtocol()Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setProtocol(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 108
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v3

    .end local v3           #im:Lcom/miui/milk/model/ContactProtos$Im;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 109
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_6

    .line 112
    .end local v5           #im2:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    :cond_b
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getNicknameList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Nickname;

    .line 113
    .local v3, nickname:Lcom/miui/milk/model/ContactProtos$Nickname;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v5

    .line 114
    .local v5, nickname2:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 115
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->getType()Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 116
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->getLabel()Ljava/lang/String;

    move-result-object v3

    .end local v3           #nickname:Lcom/miui/milk/model/ContactProtos$Nickname;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 117
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_7

    .line 120
    .end local v5           #nickname2:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    :cond_c
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getNoteList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Note;

    .line 121
    .local v3, note:Lcom/miui/milk/model/ContactProtos$Note;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Note;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    move-result-object v5

    .line 122
    .local v5, note2:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Note;->getValue()Ljava/lang/String;

    move-result-object v3

    .end local v3           #note:Lcom/miui/milk/model/ContactProtos$Note;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    .line 123
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_8

    .line 126
    .end local v5           #note2:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    :cond_d
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getOrganizationList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Organization;

    .line 127
    .local v3, org:Lcom/miui/milk/model/ContactProtos$Organization;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v5

    .line 128
    .local v5, org2:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 129
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getType()Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 130
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 131
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 132
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getDepartment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 133
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 134
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 135
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v3

    .end local v3           #org:Lcom/miui/milk/model/ContactProtos$Organization;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 136
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_9

    .line 139
    .end local v5           #org2:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    :cond_e
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getPhotoList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Photo;

    .line 140
    .local v3, photo:Lcom/miui/milk/model/ContactProtos$Photo;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Photo;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    move-result-object v5

    .line 141
    .local v5, photo2:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Photo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .end local v3           #photo:Lcom/miui/milk/model/ContactProtos$Photo;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Photo$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    .line 142
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_a

    .line 145
    .end local v5           #photo2:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    :cond_f
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getPostalList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Postal;

    .line 146
    .local v3, postal:Lcom/miui/milk/model/ContactProtos$Postal;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v5

    .line 147
    .local v5, postal2:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 148
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getType()Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 149
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 150
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 151
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getPobox()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 152
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getNeighborhood()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 153
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 154
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 155
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getPostcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 156
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Postal;->getCountry()Ljava/lang/String;

    move-result-object v3

    .end local v3           #postal:Lcom/miui/milk/model/ContactProtos$Postal;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 157
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_b

    .line 160
    .end local v5           #postal2:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    :cond_10
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getWebsiteList()Ljava/util/List;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos$Website;

    .line 161
    .local v3, website:Lcom/miui/milk/model/ContactProtos$Website;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v5

    .line 162
    .local v5, website2:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Website;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 163
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Website;->getType()Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 164
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$Website;->getLabel()Ljava/lang/String;

    move-result-object v3

    .end local v3           #website:Lcom/miui/milk/model/ContactProtos$Website;
    invoke-virtual {v5, v3}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 165
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_c

    .line 168
    .end local v5           #website2:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    :cond_11
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getGroupMembershipList()Ljava/util/List;

    move-result-object p0

    .end local p0           #contact:Lcom/miui/milk/model/ContactProtos$Contact;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v2           #i$:Ljava/util/Iterator;
    .local v3, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;

    .line 169
    .local p0, gmShip:Lcom/miui/milk/model/ContactProtos$GroupMembership;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->newBuilder()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v2

    .line 170
    .local v2, gmShip2:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 171
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupLUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 172
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupTitle()Ljava/lang/String;

    move-result-object p0

    .end local p0           #gmShip:Lcom/miui/milk/model/ContactProtos$GroupMembership;
    invoke-virtual {v2, p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 173
    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_d

    .line 176
    .end local v2           #gmShip2:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    :cond_12
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto/16 :goto_2

    .line 179
    .end local v1           #contact2:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_13
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->build()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto/16 :goto_1
.end method
