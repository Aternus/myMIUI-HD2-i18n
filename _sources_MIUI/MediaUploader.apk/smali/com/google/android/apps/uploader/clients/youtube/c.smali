.class final Lcom/google/android/apps/uploader/clients/youtube/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/content/SharedPreferences;

.field private synthetic b:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->b:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_location"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->b:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
