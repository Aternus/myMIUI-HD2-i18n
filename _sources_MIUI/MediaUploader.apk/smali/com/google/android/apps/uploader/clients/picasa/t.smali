.class public final Lcom/google/android/apps/uploader/clients/picasa/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/clients/picasa/h;


# instance fields
.field private a:Lcom/google/android/apps/uploader/j;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->b:Landroid/content/Context;

    new-instance v0, Lcom/google/android/apps/uploader/j;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/j;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/t;)Lcom/google/android/apps/uploader/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/t;Ljava/lang/String;LG;Z)Ljava/util/List;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Ljava/lang/String;LG;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;LG;Z)Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lbf;

    invoke-direct {v0, p1}, Lbf;-><init>(LG;)V

    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/g;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/uploader/clients/picasa/g;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lbf;->c()Ljava/io/DataInputStream;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/clients/picasa/g;->b()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/clients/picasa/g;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/apps/uploader/g;

    invoke-direct {v1, v4, v0}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/apps/uploader/g;

    invoke-direct {v1, v4, v0}, Lcom/google/android/apps/uploader/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/t;Lr;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lr;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lr;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLogin auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lr;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/apps/uploader/m;Lcom/google/android/apps/uploader/clients/picasa/r;)V
    .locals 9

    new-instance v8, Lr;

    const-string v0, "http://picasaweb.google.com/data/feed/tiny/user/default/"

    invoke-direct {v8, v0}, Lr;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/google/android/apps/uploader/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lr;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/n;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->b:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/uploader/clients/picasa/n;-><init>(Lcom/google/android/apps/uploader/clients/picasa/t;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/clients/picasa/r;Ljava/lang/String;Lr;)V

    invoke-virtual {v8, v0}, Lr;->a(Lar;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/j;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/uploader/j;->a(LaE;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/apps/uploader/m;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/r;)V
    .locals 9

    new-instance v8, Lr;

    const-string v0, "http://picasaweb.google.com/data/feed/tiny/user/default/"

    invoke-direct {v8, v0}, Lr;-><init>(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/atom+xml"

    invoke-virtual {v8, v0, v1}, Lr;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/google/android/apps/uploader/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/apps/uploader/clients/picasa/t;->a(Lr;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v8, v0}, Lr;->a(Ljava/lang/String;)V

    const-string v0, "\\]\\]>"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:media=\'http://search.yahoo.com/mrss/\' xmlns:gphoto=\'http://schemas.google.com/photos/2007\'><title type=\'text\'><![CDATA[@@@TITLE@@@]]></title><gphoto:access>@@@ACCESS@@@</gphoto:access><gphoto:commentingEnabled>true</gphoto:commentingEnabled><category scheme=\'http://schemas.google.com/g/2005#kind\' term=\'http://schemas.google.com/photos/2007#album\'></category></entry>"

    const-string v2, "@@@TITLE@@@"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@ACCESS@@@"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lr;->a([B)V

    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/o;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->b:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/uploader/clients/picasa/o;-><init>(Lcom/google/android/apps/uploader/clients/picasa/t;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/clients/picasa/r;Ljava/lang/String;Lr;)V

    invoke-virtual {v8, v0}, Lr;->a(Lar;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/j;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/uploader/j;->a(LaE;)V

    return-void
.end method
