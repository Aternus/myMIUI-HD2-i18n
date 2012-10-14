.class public Lcom/android/contacts/model/ContactItemTypeSource$Item;
.super Ljava/lang/Object;
.source "ContactItemTypeSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/ContactItemTypeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public drawableId:I

.field public editType:Lcom/android/contacts/model/ContactsSource$EditType;

.field public mimeType:Ljava/lang/String;

.field public textId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;II)V
    .locals 0
    .parameter "mime"
    .parameter "edit"
    .parameter "drawable"
    .parameter "text"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/contacts/model/ContactItemTypeSource$Item;->mimeType:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/android/contacts/model/ContactItemTypeSource$Item;->editType:Lcom/android/contacts/model/ContactsSource$EditType;

    .line 112
    iput p3, p0, Lcom/android/contacts/model/ContactItemTypeSource$Item;->drawableId:I

    .line 113
    iput p4, p0, Lcom/android/contacts/model/ContactItemTypeSource$Item;->textId:I

    .line 114
    return-void
.end method
