.class Lcom/android/gallery/ui/GalleryPreferenceActivity$1$1;
.super Ljava/lang/Object;
.source "GalleryPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/GalleryPreferenceActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery/ui/GalleryPreferenceActivity$1;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/GalleryPreferenceActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery/ui/GalleryPreferenceActivity$1$1;->this$1:Lcom/android/gallery/ui/GalleryPreferenceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/android/gallery/data/ThumbnailCacheManager;->deletaCacheFiles()V

    .line 50
    return-void
.end method
