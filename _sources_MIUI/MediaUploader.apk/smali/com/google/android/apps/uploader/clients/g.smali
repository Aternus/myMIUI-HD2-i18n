.class final Lcom/google/android/apps/uploader/clients/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/E;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    new-instance v3, Lcom/google/android/apps/uploader/clients/k;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/uploader/clients/k;-><init>(Lcom/google/android/apps/uploader/clients/g;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
