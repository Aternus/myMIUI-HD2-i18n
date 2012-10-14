.class final Lcom/google/android/apps/uploader/clients/picasa/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/g;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/q;->a:Lcom/google/android/apps/uploader/clients/picasa/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/q;->a:Lcom/google/android/apps/uploader/clients/picasa/g;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/g;->a(Lcom/google/android/apps/uploader/clients/picasa/g;)Lcom/google/android/apps/uploader/clients/picasa/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/clients/picasa/s;->b(Ljava/lang/String;)V

    return-void
.end method
