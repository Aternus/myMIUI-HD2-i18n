.class Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow$ResolveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public bestResolve:Landroid/content/pm/ResolveInfo;

.field public icon:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/QuickContactWindow$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1286
    invoke-direct {p0}, Lcom/android/contacts/ui/QuickContactWindow$ResolveCache$Entry;-><init>()V

    return-void
.end method
