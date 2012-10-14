.class final Lcom/google/android/apps/uploader/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/ManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/t;->a:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/t;->a:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->f(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->d()V

    return-void
.end method
