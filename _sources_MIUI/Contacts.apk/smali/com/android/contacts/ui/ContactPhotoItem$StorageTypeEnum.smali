.class public final enum Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
.super Ljava/lang/Enum;
.source "ContactPhotoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactPhotoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field public static final enum CONTACT_PHOTO:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field public static final enum FROM_NAME:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field public static final enum FROM_ZIP:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field public static final enum ONLINE:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field public static final enum RESOURCE_ID:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    const-string v1, "FROM_NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_NAME:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 11
    new-instance v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    const-string v1, "CONTACT_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->CONTACT_PHOTO:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 12
    new-instance v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    const-string v1, "RESOURCE_ID"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->RESOURCE_ID:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 13
    new-instance v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->ONLINE:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 14
    new-instance v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    const-string v1, "FROM_ZIP"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_ZIP:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    sget-object v1, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_NAME:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->CONTACT_PHOTO:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->RESOURCE_ID:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->ONLINE:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_ZIP:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->$VALUES:[Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->$VALUES:[Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    invoke-virtual {v0}, [Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    return-object v0
.end method
