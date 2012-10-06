.class public final Lcom/google/android/apps/uploader/clients/picasa/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/ElementListener;


# instance fields
.field private a:Lorg/xml/sax/ContentHandler;

.field private b:Ljava/util/List;

.field private c:Lcom/google/android/apps/uploader/clients/picasa/s;

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    const-string v2, "entry"

    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->b:Ljava/util/List;

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v1, "feed"

    invoke-direct {v0, v3, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v1, "entry"

    invoke-virtual {v0, v3, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "title"

    invoke-virtual {v1, v3, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/uploader/clients/picasa/q;

    invoke-direct {v3, p0}, Lcom/google/android/apps/uploader/clients/picasa/q;-><init>(Lcom/google/android/apps/uploader/clients/picasa/g;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://schemas.google.com/photos/2007"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/uploader/clients/picasa/p;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/clients/picasa/p;-><init>(Lcom/google/android/apps/uploader/clients/picasa/g;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->a:Lorg/xml/sax/ContentHandler;

    return-void

    :cond_0
    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v1, "entry"

    invoke-direct {v0, v3, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/g;)Lcom/google/android/apps/uploader/clients/picasa/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->c:Lcom/google/android/apps/uploader/clients/picasa/s;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->a:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public final end()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->c:Lcom/google/android/apps/uploader/clients/picasa/s;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/s;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->c:Lcom/google/android/apps/uploader/clients/picasa/s;

    return-void
.end method
