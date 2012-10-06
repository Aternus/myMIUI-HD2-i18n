.class Lcom/android/browser/util/WMLParserHandler$EleAttributes;
.super Ljava/lang/Object;
.source "WMLParserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/WMLParserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EleAttributes"
.end annotation


# instance fields
.field private attrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/util/WMLParserHandler;


# direct methods
.method public constructor <init>(Lcom/android/browser/util/WMLParserHandler;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter
    .parameter "attr"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->this$0:Lcom/android/browser/util/WMLParserHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->attrs:Ljava/util/HashMap;

    .line 64
    iget-object v1, p0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->attrs:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->attrs:Ljava/util/HashMap;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->attrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
