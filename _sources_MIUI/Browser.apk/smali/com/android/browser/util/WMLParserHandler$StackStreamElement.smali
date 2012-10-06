.class Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
.super Ljava/lang/Object;
.source "WMLParserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/WMLParserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackStreamElement"
.end annotation


# instance fields
.field public attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

.field public name:Ljava/lang/String;

.field public para1:I

.field public para2:Ljava/lang/String;

.field public stream:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/android/browser/util/WMLParserHandler;


# direct methods
.method protected constructor <init>(Lcom/android/browser/util/WMLParserHandler;Ljava/lang/String;Lcom/android/browser/util/WMLParserHandler$EleAttributes;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter
    .parameter "n"
    .parameter "a"
    .parameter "s"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->this$0:Lcom/android/browser/util/WMLParserHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p4, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    .line 55
    iput-object p2, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/android/browser/util/WMLParserHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter
    .parameter "n"
    .parameter "a"
    .parameter "s"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->this$0:Lcom/android/browser/util/WMLParserHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    .line 48
    iput-object p2, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->name:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    invoke-direct {v0, p1, p3}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;-><init>(Lcom/android/browser/util/WMLParserHandler;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    .line 50
    return-void
.end method
