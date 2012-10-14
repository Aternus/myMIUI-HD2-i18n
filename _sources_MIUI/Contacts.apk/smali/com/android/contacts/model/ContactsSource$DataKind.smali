.class public Lcom/android/contacts/model/ContactsSource$DataKind;
.super Ljava/lang/Object;
.source "ContactsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataKind"
.end annotation


# instance fields
.field public actionAltHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

.field public actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

.field public actionBodySocial:Z

.field public actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

.field public centered:Z

.field public defaultValues:Landroid/content/ContentValues;

.field public editable:Z

.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/ContactsSource$EditField;",
            ">;"
        }
    .end annotation
.end field

.field public headless:Z

.field public iconAltRes:I

.field public iconRes:I

.field public isList:Z

.field public mimeType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public secondary:Z

.field public titleRes:I

.field public typeColumn:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            ">;"
        }
    .end annotation
.end field

.field public valueOverallMax:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->secondary:Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->headless:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBodySocial:Z

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 2
    .parameter "mimeType"
    .parameter "titleRes"
    .parameter "iconRes"
    .parameter "weight"
    .parameter "editable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->secondary:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->headless:Z

    .line 218
    iput-boolean v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBodySocial:Z

    .line 237
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    .line 238
    iput p2, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->titleRes:I

    .line 239
    iput p3, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    .line 240
    iput p4, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->weight:I

    .line 241
    iput-boolean p5, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->editable:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 244
    return-void
.end method
