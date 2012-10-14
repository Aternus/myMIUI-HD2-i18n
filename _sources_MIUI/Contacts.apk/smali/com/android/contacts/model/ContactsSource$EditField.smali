.class public Lcom/android/contacts/model/ContactsSource$EditField;
.super Ljava/lang/Object;
.source "ContactsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inline:Z

.field public inputType:I

.field public minLines:I

.field public optional:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource$EditField;->column:Ljava/lang/String;

    .line 319
    iput p2, p0, Lcom/android/contacts/model/ContactsSource$EditField;->titleRes:I

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"
    .parameter "inputType"

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;I)V

    .line 324
    iput p3, p0, Lcom/android/contacts/model/ContactsSource$EditField;->inputType:I

    .line 325
    return-void
.end method


# virtual methods
.method public setInline(Z)Lcom/android/contacts/model/ContactsSource$EditField;
    .locals 0
    .parameter "inline"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/contacts/model/ContactsSource$EditField;->inline:Z

    .line 334
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/model/ContactsSource$EditField;
    .locals 0
    .parameter "optional"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/contacts/model/ContactsSource$EditField;->optional:Z

    .line 329
    return-object p0
.end method
