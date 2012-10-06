.class public Lcom/android/contacts/model/ContactsSource$EditType;
.super Ljava/lang/Object;
.source "ContactsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public customColumn:Ljava/lang/String;

.field public labelIconRes:I

.field public labelRes:I

.field public rawValue:I

.field public secondary:Z

.field public specificMax:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "rawValue"
    .parameter "labelRes"

    .prologue
    .line 264
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    .line 265
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "rawValue"
    .parameter "labelRes"
    .parameter "labelIconRes"

    .prologue
    const/4 v0, -0x1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput v0, p0, Lcom/android/contacts/model/ContactsSource$EditType;->labelIconRes:I

    .line 268
    iput p1, p0, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    .line 269
    iput p2, p0, Lcom/android/contacts/model/ContactsSource$EditType;->labelRes:I

    .line 270
    iput p3, p0, Lcom/android/contacts/model/ContactsSource$EditType;->labelIconRes:I

    .line 271
    iput v0, p0, Lcom/android/contacts/model/ContactsSource$EditType;->specificMax:I

    .line 272
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 291
    instance-of v2, p1, Lcom/android/contacts/model/ContactsSource$EditType;

    if-eqz v2, :cond_1

    .line 292
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/ContactsSource$EditType;

    move-object v1, v0

    .line 293
    .local v1, other:Lcom/android/contacts/model/ContactsSource$EditType;
    iget v2, v1, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    iget v3, p0, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 295
    .end local v1           #other:Lcom/android/contacts/model/ContactsSource$EditType;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/contacts/model/ContactsSource$EditType;
    :cond_0
    move v2, v4

    .line 293
    goto :goto_0

    .end local v1           #other:Lcom/android/contacts/model/ContactsSource$EditType;
    :cond_1
    move v2, v4

    .line 295
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    return v0
.end method

.method public setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 0
    .parameter "customColumn"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource$EditType;->customColumn:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 0
    .parameter "secondary"

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/contacts/model/ContactsSource$EditType;->secondary:Z

    .line 276
    return-object p0
.end method

.method public setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 0
    .parameter "specificMax"

    .prologue
    .line 280
    iput p1, p0, Lcom/android/contacts/model/ContactsSource$EditType;->specificMax:I

    .line 281
    return-object p0
.end method
