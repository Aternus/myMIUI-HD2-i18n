.class Lcom/android/gallery/ui/GalleryPreferenceActivity$1;
.super Ljava/lang/Object;
.source "GalleryPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/GalleryPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/GalleryPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/GalleryPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity$1;->this$0:Lcom/android/gallery/ui/GalleryPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v4, Lcom/android/gallery/ui/GalleryPreferenceActivity$1$1;

    invoke-direct {v4, p0}, Lcom/android/gallery/ui/GalleryPreferenceActivity$1$1;-><init>(Lcom/android/gallery/ui/GalleryPreferenceActivity$1;)V

    .line 53
    .local v4, delete:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity$1;->this$0:Lcom/android/gallery/ui/GalleryPreferenceActivity;

    const/4 v1, 0x0

    const v2, 0x7f090062

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery/app/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
