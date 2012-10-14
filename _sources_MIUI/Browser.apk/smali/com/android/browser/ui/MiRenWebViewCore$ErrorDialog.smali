.class Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorDialog"
.end annotation


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mError:I

.field public final mTitle:I

.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "desc"
    .parameter "error"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mTitle:I

    .line 1131
    iput-object p3, p0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mDescription:Ljava/lang/String;

    .line 1132
    iput p4, p0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mError:I

    .line 1133
    return-void
.end method
