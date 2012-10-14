.class public Lcom/android/mms/dom/smil/parser/SmilContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilContentHandler.java"


# instance fields
.field private mCurrentNode:Lorg/w3c/dom/Node;

.field private mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 94
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 87
    return-void
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    .line 45
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 46
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2, p2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 62
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz p4, :cond_0

    .line 63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 79
    return-void
.end method
