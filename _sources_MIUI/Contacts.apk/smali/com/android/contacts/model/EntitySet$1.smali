.class final Lcom/android/contacts/model/EntitySet$1;
.super Ljava/lang/Object;
.source "EntitySet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/EntitySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/model/EntitySet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntitySet;
    .locals 2
    .parameter "in"

    .prologue
    .line 328
    new-instance v0, Lcom/android/contacts/model/EntitySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/model/EntitySet;-><init>(Lcom/android/contacts/model/EntitySet$1;)V

    .line 329
    .local v0, state:Lcom/android/contacts/model/EntitySet;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntitySet;->readFromParcel(Landroid/os/Parcel;)V

    .line 330
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntitySet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/EntitySet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/EntitySet;
    .locals 1
    .parameter "size"

    .prologue
    .line 334
    new-array v0, p1, [Lcom/android/contacts/model/EntitySet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntitySet$1;->newArray(I)[Lcom/android/contacts/model/EntitySet;

    move-result-object v0

    return-object v0
.end method
