.class public final Lcom/android/sidekick/SimpleParcelFile;
.super Ljava/lang/Object;
.source "SimpleParcelFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/SimpleParcelFile$1;,
        Lcom/android/sidekick/SimpleParcelFile$Writer;,
        Lcom/android/sidekick/SimpleParcelFile$Reader;
    }
.end annotation


# static fields
.field private static DATA_MALFORMED_EXCEPTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SimpleParcelFile:input data malformed--"

    sput-object v0, Lcom/android/sidekick/SimpleParcelFile;->DATA_MALFORMED_EXCEPTION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/sidekick/SimpleParcelFile;->DATA_MALFORMED_EXCEPTION:Ljava/lang/String;

    return-object v0
.end method

.method public static newAppendWriter(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Writer;
    .locals 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/android/sidekick/SimpleParcelFile$Writer;

    new-instance v1, Lcom/android/sidekick/SimpleParcelFile;

    invoke-direct {v1}, Lcom/android/sidekick/SimpleParcelFile;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/sidekick/SimpleParcelFile$Writer;-><init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedWriter;Lcom/android/sidekick/SimpleParcelFile$1;)V

    return-object v0
.end method

.method public static newReader(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Reader;
    .locals 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/android/sidekick/SimpleParcelFile$Reader;

    new-instance v1, Lcom/android/sidekick/SimpleParcelFile;

    invoke-direct {v1}, Lcom/android/sidekick/SimpleParcelFile;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/sidekick/SimpleParcelFile$Reader;-><init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedReader;Lcom/android/sidekick/SimpleParcelFile$1;)V

    return-object v0
.end method

.method public static newWriter(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Writer;
    .locals 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/android/sidekick/SimpleParcelFile$Writer;

    new-instance v1, Lcom/android/sidekick/SimpleParcelFile;

    invoke-direct {v1}, Lcom/android/sidekick/SimpleParcelFile;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/sidekick/SimpleParcelFile$Writer;-><init>(Lcom/android/sidekick/SimpleParcelFile;Ljava/io/BufferedWriter;Lcom/android/sidekick/SimpleParcelFile$1;)V

    return-object v0
.end method
