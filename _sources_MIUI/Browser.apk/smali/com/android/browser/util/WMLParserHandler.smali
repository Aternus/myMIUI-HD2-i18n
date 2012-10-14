.class public Lcom/android/browser/util/WMLParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WMLParserHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/WMLParserHandler$EleAttributes;,
        Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private cancelable:Lcom/android/browser/util/ICancelable;

.field private firstCard:Z

.field private mCss:Ljava/lang/String;

.field private mProgress:I

.field private mScript:Ljava/lang/String;

.field private output:Ljava/io/OutputStream;

.field private progressListener:Lcom/android/browser/util/WMLParserSax$ProgressListener;

.field private redirect:Z

.field private timerIdBase:I

.field private writeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/browser/util/WMLParserHandler$StackStreamElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "com.android.browser.util.WMLParserSax"

    sput-object v0, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/android/browser/util/WMLParserSax$ProgressListener;Lcom/android/browser/util/ICancelable;)V
    .locals 1
    .parameter "os"
    .parameter "listener"
    .parameter "c"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/util/WMLParserHandler;->timerIdBase:I

    .line 77
    iput-object p1, p0, Lcom/android/browser/util/WMLParserHandler;->output:Ljava/io/OutputStream;

    .line 78
    iput-object p2, p0, Lcom/android/browser/util/WMLParserHandler;->progressListener:Lcom/android/browser/util/WMLParserSax$ProgressListener;

    .line 79
    iput-object p3, p0, Lcom/android/browser/util/WMLParserHandler;->cancelable:Lcom/android/browser/util/ICancelable;

    .line 80
    return-void
.end method

.method private checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z
    .locals 1
    .parameter "sse"
    .parameter "name"

    .prologue
    .line 784
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    :cond_0
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private endAElement()V
    .locals 1

    .prologue
    .line 656
    const-string v0, "</a>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private endAnchorElement()V
    .locals 2

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v0

    .line 490
    .local v0, anchor:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v1, "go"

    invoke-direct {p0, v0, v1}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    .line 492
    iget-object v1, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 493
    const-string v1, "</button>"

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 494
    const-string v1, "</form>"

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 495
    iget-object v1, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 497
    :cond_0
    return-void
.end method

.method private endCardElement()V
    .locals 2

    .prologue
    const-string v1, "</div>"

    .line 792
    const-string v0, "</div>"

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 793
    const-string v0, "</div>"

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method private endContainerElement(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private endFieldSetElement()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "</fieldset>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private endGoElement()V
    .locals 8

    .prologue
    const-string v7, "go"

    const-string v6, "Invalid WML format."

    .line 449
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v2

    .line 450
    .local v2, go:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v4, "go"

    invoke-direct {p0, v2, v7}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    sget-object v4, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    const-string v5, "Invalid WML format."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v0

    .line 456
    .local v0, anchor:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v4, "anchor"

    invoke-direct {p0, v0, v4}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 457
    sget-object v4, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    const-string v5, "Invalid WML format."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_1
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 463
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v1, attrBuilder:Ljava/lang/StringBuilder;
    const-string v4, "<button type=\"submit\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    const-string v5, "accesskey"

    invoke-virtual {v4, v5}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 469
    const-string v4, " accesskey=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_2
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 475
    iget-object v4, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 476
    iget-object v4, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 479
    const-string v4, "go"

    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    invoke-direct {p0, v7, v4}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lcom/android/browser/util/WMLParserHandler$EleAttributes;)V

    goto :goto_0
.end method

.method private endHeadElement()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method private endImgElement()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method private endInputElement()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method private endMetaElement()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method private endOnEventElement()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v0

    const-string v1, "onevent"

    invoke-direct {p0, v0, v1}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method private endPElement()V
    .locals 1

    .prologue
    .line 631
    const-string v0, "</div>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private endPostFieldElement()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method private endSelectElement()V
    .locals 6

    .prologue
    .line 323
    const-string v3, "</select>"

    invoke-direct {p0, v3}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v1

    .line 326
    .local v1, sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v3, "select"

    invoke-direct {p0, v1, v3}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    sget-object v3, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    const-string v4, "Stream stack not match"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v3, v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    const-string v4, "iname"

    invoke-virtual {v3, v4}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, attrBuilder:Ljava/lang/StringBuilder;
    const-string v3, "<input type=\"hidden\" class=\"ivalue\" id=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    const-string v5, "ivalue"

    invoke-virtual {v4, v5}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 341
    .end local v0           #attrBuilder:Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v3

    iget-object v3, v3, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 342
    iget-object v3, v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private endSelectOptionElement()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "</option>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private endSetVarElement()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method private endSpanElement()V
    .locals 1

    .prologue
    .line 597
    const-string v0, "</span>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private endTimerElement()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method private peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 817
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-object v0, p0

    goto :goto_0
.end method

.method private popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x0

    .line 810
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-object v0, p0

    goto :goto_0
.end method

.method private pushWriteStream(Ljava/lang/String;Lcom/android/browser/util/WMLParserHandler$EleAttributes;)V
    .locals 3
    .parameter "eleName"
    .parameter "a"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    new-instance v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;-><init>(Lcom/android/browser/util/WMLParserHandler;Ljava/lang/String;Lcom/android/browser/util/WMLParserHandler$EleAttributes;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    return-void
.end method

.method private pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "eleName"
    .parameter "a"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    new-instance v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;-><init>(Lcom/android/browser/util/WMLParserHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    return-void
.end method

.method private safeClose(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAElement(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    const-string v4, "\""

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<a onclick=\"return nsWMLcheckLink(this);\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, attBuilder:Ljava/lang/StringBuilder;
    const-string v2, "href"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    const-string v2, " href=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_0
    const-string v2, "title"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    const-string v2, " title=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_1
    const-string v2, "accesskey"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 648
    const-string v2, " accesskey=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_2
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method private startAnchorElement(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 484
    const-string v0, "anchor"

    invoke-direct {p0, v0, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 485
    return-void
.end method

.method private startContainerElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private startCopyElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private startFieldSetElement(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, attBuilder:Ljava/lang/StringBuilder;
    const-string v2, "<fieldset"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 509
    const-string v2, "title"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<legend>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</legend>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 513
    :cond_1
    return-void
.end method

.method private startGoElement(Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter "attributes"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v6

    .line 382
    .local v6, onevent:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v10, "onevent"

    invoke-direct {p0, v6, v10}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 383
    iget-object v10, v6, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para2:Ljava/lang/String;

    const-string v11, "onenterforward"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 385
    const-string v10, "href"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, onEnterForwardHref:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 387
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<meta http-equiv=\"Refresh\" content=\"0;URL=javascript:nsOnRefresh(\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')\"/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v10

    iget-object v10, v10, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 390
    iget-object v10, v6, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 391
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    .line 446
    .end local v5           #onEnterForwardHref:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v10, v6, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para2:Ljava/lang/String;

    const-string v11, "ontimer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "<form action=\""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, attrBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timer_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/browser/util/WMLParserHandler;->timerIdBase:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/android/browser/util/WMLParserHandler;->timerIdBase:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, timerID:Ljava/lang/String;
    const-string v10, "href"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" origaction=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "href"

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" id=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " onsubmit=\"return nsWMLcheckForm(this);\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "method"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "accept-charset"

    aput-object v11, v7, v10

    .line 403
    .local v7, optAttrs:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 404
    .local v1, attr:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 406
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    .end local v1           #attr:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const-string v10, ">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 413
    const-string v10, "</form>"

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 414
    const-string v10, "<script type=\"text/javascript\">"

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 415
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nsWMLRegisterTimer(\'go\' ,\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\');"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 416
    const-string v10, "</script>"

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v10

    iget-object v10, v10, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 419
    iget-object v10, v6, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 423
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #attrBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #optAttrs:[Ljava/lang/String;
    .end local v8           #timerID:Ljava/lang/String;
    :cond_4
    const-string v10, "go"

    invoke-direct {p0, v10, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .restart local v2       #attrBuilder:Ljava/lang/StringBuilder;
    const-string v10, "<form action=\""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "href"

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" origaction=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "href"

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" onsubmit=\"return nsWMLcheckForm(this);\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v10, "method"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 434
    .restart local v9       #value:Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 435
    const-string v10, " method="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_5
    const-string v10, "accept-charset"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 440
    const-string v10, " accept-charset=\""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_6
    const-string v10, ">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startHeadElement(Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "attributes"

    .prologue
    .line 681
    return-void
.end method

.method private startImgElement(Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "attributes"

    .prologue
    const-string v10, "alt"

    const-string v9, "\""

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v1, attBuilder:Ljava/lang/StringBuilder;
    const-string v7, "<img"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v7, "alt"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 524
    const-string v7, " title=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_0
    const/4 v7, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "src"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "alt"

    aput-object v10, v3, v7

    const/4 v7, 0x2

    const-string v8, "vspace"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "hspace"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "align"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string v8, "width"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "height"

    aput-object v8, v3, v7

    .line 528
    .local v3, attrs:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 529
    .local v2, attr:Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    if-eqz v6, :cond_1

    .line 531
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 535
    .end local v2           #attr:Ljava/lang/String;
    :cond_2
    const-string v7, "/>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private startInputElement(Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter "attributes"

    .prologue
    const-string v9, "name"

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v2, attrBuilder:Ljava/lang/StringBuilder;
    const-string v7, "<input id=__wmlbrowser_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {p1, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const/16 v7, 0x8

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name"

    aput-object v9, v3, v7

    const/4 v7, 0x1

    const-string v8, "type"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "value"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "size"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "maxlength"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string v8, "tabindex"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "title"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    const-string v8, "accesskey"

    aput-object v8, v3, v7

    .line 577
    .local v3, attrs:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 578
    .local v1, attr:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 580
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 584
    .end local v1           #attr:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    const-string v7, "/>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private startMetaElement(Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "attributes"

    .prologue
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "<meta"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    .local v2, attrBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "http-equiv"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "content"

    aput-object v8, v3, v7

    .line 664
    .local v3, attrs:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 665
    .local v1, attr:Ljava/lang/String;
    const-string v7, ""

    invoke-interface {p1, v7, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 666
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 667
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 671
    .end local v1           #attr:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    const-string v7, "/>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method private startOnEventElement(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, eventType:Ljava/lang/String;
    const-string v1, "onenterforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ontimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_2
    const-string v1, "onevent"

    invoke-direct {p0, v1, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 239
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para2:Ljava/lang/String;

    goto :goto_0
.end method

.method private startPElement(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v1, attBuilder:Ljava/lang/StringBuilder;
    const-string v3, "<div class=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v3, "mode"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, mode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nowrap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    const-string v3, "p_nowrap\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :goto_0
    const-string v3, "align"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, align:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " align=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_0
    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 628
    return-void

    .line 619
    .end local v0           #align:Ljava/lang/String;
    :cond_1
    const-string v3, "p\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private startPostFieldElement(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    const-string v3, "value"

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<input type=\"hidden\" name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, attrBuilder:Ljava/lang/StringBuilder;
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" origvalue=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private startSelectElement(Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "attributes"

    .prologue
    const/4 v9, 0x0

    const-string v10, "\""

    .line 297
    const-string v7, "select"

    invoke-direct {p0, v7, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 298
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v7

    iput v9, v7, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para1:I

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v2, attrBuilder:Ljava/lang/StringBuilder;
    const-string v7, "<select onchange=\"nsWMLcheckSelect(this);\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v7, "name"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, value:Ljava/lang/String;
    const-string v7, " id=\"__wmlbrowser_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "tabindex"

    aput-object v7, v3, v9

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "accesskey"

    aput-object v8, v3, v7

    .line 304
    .local v3, attrs:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 305
    .local v1, attr:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    .end local v1           #attr:Ljava/lang/String;
    :cond_1
    const-string v7, "multiple"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    if-eqz v6, :cond_2

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    const-string v7, " multiple=multiple"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_2
    const-string v7, ">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private startSelectOptionElement(Lorg/xml/sax/Attributes;)V
    .locals 14
    .parameter "attributes"

    .prologue
    const-string v13, "\'"

    .line 251
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v9

    .line 252
    .local v9, sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    if-eqz v9, :cond_0

    iget-object v11, v9, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->name:Ljava/lang/String;

    const-string v12, "select"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 253
    :cond_0
    const-string v11, "WMLParserSax > startSelectOptionElement("

    const-string v12, "parent is not select"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "<option"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, attrBuilder:Ljava/lang/StringBuilder;
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "value"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "title"

    aput-object v12, v7, v11

    .line 261
    .local v7, optAttrs:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v0, v4

    .line 262
    .local v1, attr:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, value:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 264
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 269
    .end local v1           #attr:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_3
    const-string v11, "onpick"

    invoke-interface {p1, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 270
    .restart local v10       #value:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 271
    const-string v11, " onclick=\"location.href=nsWMLreplaceValues (\""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", \"href\")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_4
    iget-object v11, v9, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    const-string v12, "ivalue"

    invoke-virtual {v11, v12}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, ivalue:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 278
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, selectedPos:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, currentPos:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 282
    const-string v11, " selected=\"selected\""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .end local v3           #currentPos:Ljava/lang/String;
    .end local v8           #selectedPos:Ljava/lang/String;
    :cond_5
    const-string v11, ">"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 289
    iget v11, v9, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para1:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v9, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->para1:I

    goto/16 :goto_0
.end method

.method private startSetVarElement(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, eleBuilder:Ljava/lang/StringBuilder;
    const-string v1, "<input type=\"hidden\" id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private startSpanElement(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 593
    const-string v0, "<span class=\"span\">"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method private startTimerElement(Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "attributes"

    .prologue
    const/4 v6, 0x1

    const-string v7, "value"

    .line 543
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v2

    .line 544
    .local v2, sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v4, "card"

    invoke-direct {p0, v2, v4}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 564
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    .line 550
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->attributes:Lcom/android/browser/util/WMLParserHandler$EleAttributes;

    const-string v5, "ontimer"

    invoke-virtual {v4, v5}, Lcom/android/browser/util/WMLParserHandler$EleAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, onTimerHref:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v0, v4, 0xa

    .line 552
    .local v0, interval:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<meta http-equiv=\"Refresh\" content=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";URL=javascript:nsOnRefresh(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 554
    iput-boolean v6, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    .line 556
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 557
    iget-object v4, v2, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 559
    const-string v4, "value"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, value:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<script type=\"text/javascript\">nsWMLStartTimer("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");</script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 563
    iput-boolean v6, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    goto :goto_0
.end method

.method private updateProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->progressListener:Lcom/android/browser/util/WMLParserSax$ProgressListener;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->progressListener:Lcom/android/browser/util/WMLParserSax$ProgressListener;

    invoke-interface {v0, p1}, Lcom/android/browser/util/WMLParserSax$ProgressListener;->onProgress(I)V

    .line 840
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 3
    .parameter "line"

    .prologue
    .line 826
    :try_start_0
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->peekWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 834
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/android/browser/util/WMLParserHandler;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 832
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeLine(Ljava/lang/String;)V
    .locals 2
    .parameter "line"

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 822
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "</body>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 95
    const-string v0, "</html>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "WMLParserSax > endDocument("

    const-string v1, "stream stack not empty:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v1, "WMLParserSax >         "

    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->writeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    iget-object v0, v0, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 178
    const-string v0, "wml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/browser/util/WMLParserHandler;->endWmlElement()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v0, "head"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endHeadElement()V

    goto :goto_0

    .line 182
    :cond_2
    const-string v0, "card"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endCardElement()V

    goto :goto_0

    .line 184
    :cond_3
    const-string v0, "meta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endMetaElement()V

    goto :goto_0

    .line 186
    :cond_4
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endAElement()V

    goto :goto_0

    .line 188
    :cond_5
    const-string v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endPElement()V

    goto :goto_0

    .line 190
    :cond_6
    const-string v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "td"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pre"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/browser/util/WMLParserHandler;->endContainerElement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_8
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    :cond_9
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endSpanElement()V

    goto/16 :goto_0

    .line 206
    :cond_a
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endInputElement()V

    goto/16 :goto_0

    .line 208
    :cond_b
    const-string v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 209
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endTimerElement()V

    goto/16 :goto_0

    .line 210
    :cond_c
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 211
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endImgElement()V

    goto/16 :goto_0

    .line 212
    :cond_d
    const-string v0, "fieldset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 213
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endFieldSetElement()V

    goto/16 :goto_0

    .line 214
    :cond_e
    const-string v0, "anchor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 215
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endAnchorElement()V

    goto/16 :goto_0

    .line 216
    :cond_f
    const-string v0, "go"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 217
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endGoElement()V

    goto/16 :goto_0

    .line 218
    :cond_10
    const-string v0, "setvar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 219
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endSetVarElement()V

    goto/16 :goto_0

    .line 220
    :cond_11
    const-string v0, "postfield"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 221
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endPostFieldElement()V

    goto/16 :goto_0

    .line 222
    :cond_12
    const-string v0, "select"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 223
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endSelectElement()V

    goto/16 :goto_0

    .line 224
    :cond_13
    const-string v0, "option"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 225
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endSelectOptionElement()V

    goto/16 :goto_0

    .line 226
    :cond_14
    const-string v0, "onevent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->endOnEventElement()V

    goto/16 :goto_0
.end method

.method public endWmlElement()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "</body>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 726
    const-string v0, "</html>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 728
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    .line 729
    iget v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->updateProgress(I)V

    .line 730
    return-void
.end method

.method public setScriptAndCss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "script"
    .parameter "css"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/browser/util/WMLParserHandler;->mScript:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/android/browser/util/WMLParserHandler;->mCss:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public startCardElement(Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "attributes"

    .prologue
    const-string v10, "title"

    const-string v9, "#"

    .line 733
    iget-boolean v7, p0, Lcom/android/browser/util/WMLParserHandler;->firstCard:Z

    if-eqz v7, :cond_1

    .line 734
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/browser/util/WMLParserHandler;->firstCard:Z

    .line 736
    const-string v7, "title"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 737
    .local v6, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/browser/util/WMLParserHandler;->popWriteStream()Lcom/android/browser/util/WMLParserHandler$StackStreamElement;

    move-result-object v5

    .line 738
    .local v5, sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    const-string v7, "wml"

    invoke-direct {p0, v5, v7}, Lcom/android/browser/util/WMLParserHandler;->checkStackElement(Lcom/android/browser/util/WMLParserHandler$StackStreamElement;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 739
    sget-object v7, Lcom/android/browser/util/WMLParserHandler;->LOGTAG:Ljava/lang/String;

    const-string v8, "Stream stack not match"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v5           #sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    .end local v6           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 743
    .restart local v5       #sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    .restart local v6       #title:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 744
    iget-object v7, v5, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->write(Ljava/lang/String;)V

    .line 745
    iget-object v7, v5, Lcom/android/browser/util/WMLParserHandler$StackStreamElement;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->safeClose(Ljava/io/OutputStream;)V

    .line 749
    .end local v5           #sse:Lcom/android/browser/util/WMLParserHandler$StackStreamElement;
    .end local v6           #title:Ljava/lang/String;
    :cond_1
    const-string v7, "onenterforward"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, enterForward:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "#"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<meta http-equiv=\"Refresh\" content=\"0;URL=javascript:nsOnRefresh(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')\"/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 753
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    .line 758
    :cond_2
    iget-boolean v7, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    if-nez v7, :cond_3

    .line 759
    const-string v7, "ontimer"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, onTimerHref:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 763
    const-string v7, "card"

    invoke-direct {p0, v7, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 767
    .end local v4           #onTimerHref:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .local v0, attBuilder:Ljava/lang/StringBuilder;
    const-string v7, "<div"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v7, "id"

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 771
    const-string v7, " id=\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_4
    const-string v7, " class=card>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 776
    const-string v7, "title"

    invoke-interface {p1, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, cardTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<h1>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</h1>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 780
    :cond_5
    const-string v7, "<div class=\"innercard\">"

    invoke-direct {p0, v7}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/util/WMLParserHandler;->redirect:Z

    .line 90
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/util/WMLParserHandler;->cancelable:Lcom/android/browser/util/ICancelable;

    invoke-interface {v0}, Lcom/android/browser/util/ICancelable;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_1

    .line 118
    iget v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    .line 119
    iget v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->updateProgress(I)V

    .line 122
    :cond_1
    const-string v0, "wml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startWmlElement(Lorg/xml/sax/Attributes;)V

    .line 173
    :cond_2
    :goto_0
    return-void

    .line 124
    :cond_3
    const-string v0, "head"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startHeadElement(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v0, "card"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startCardElement(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "meta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startMetaElement(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 130
    :cond_6
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startAElement(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 132
    :cond_7
    const-string v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startPElement(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 134
    :cond_8
    const-string v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    invoke-direct {p0, p2, p4}, Lcom/android/browser/util/WMLParserHandler;->startCopyElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 136
    :cond_9
    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "tr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "td"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "pre"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    :cond_a
    invoke-direct {p0, p2, p4}, Lcom/android/browser/util/WMLParserHandler;->startContainerElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 146
    :cond_b
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    :cond_c
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startSpanElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 150
    :cond_d
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startInputElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startTimerElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 154
    :cond_f
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startImgElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 156
    :cond_10
    const-string v0, "fieldset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 157
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startFieldSetElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 158
    :cond_11
    const-string v0, "anchor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 159
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startAnchorElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 160
    :cond_12
    const-string v0, "go"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 161
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startGoElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 162
    :cond_13
    const-string v0, "setvar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 163
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startSetVarElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 164
    :cond_14
    const-string v0, "postfield"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 165
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startPostFieldElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 166
    :cond_15
    const-string v0, "select"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 167
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startSelectElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 168
    :cond_16
    const-string v0, "option"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 169
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startSelectOptionElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 170
    :cond_17
    const-string v0, "onevent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-direct {p0, p4}, Lcom/android/browser/util/WMLParserHandler;->startOnEventElement(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0
.end method

.method public startWmlElement(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/util/WMLParserHandler;->firstCard:Z

    .line 690
    const-string v0, "<html xmlns=\"http://www.w3.org/1999/xhtml\">"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 691
    const-string v0, "<head>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 692
    const-string v0, "<title>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 695
    const-string v0, "wml"

    invoke-direct {p0, v0, p1}, Lcom/android/browser/util/WMLParserHandler;->pushWriteStream(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 696
    const-string v0, "</title>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 697
    const-string v0, "<meta name=\"viewport\" content=\"width=device-width; initial-scale=0.99; minimum-scale=0.99;\"/>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script type=\"text/javascript\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/util/WMLParserHandler;->mScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/util/WMLParserHandler;->mCss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 712
    const-string v0, "</head>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 713
    const-string v0, "<body onload=\"nsWMLOnLoad()\">"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 714
    const-string v0, "<noscript>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 715
    const-string v0, "<div class=\"critical\">"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 716
    const-string v0, "Please enable Javascript to allow the full functionality of wmlbrowser to work."

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 717
    const-string v0, "</div>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 718
    const-string v0, "</noscript>"

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->writeLine(Ljava/lang/String;)V

    .line 720
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    .line 721
    iget v0, p0, Lcom/android/browser/util/WMLParserHandler;->mProgress:I

    invoke-direct {p0, v0}, Lcom/android/browser/util/WMLParserHandler;->updateProgress(I)V

    .line 722
    return-void
.end method
