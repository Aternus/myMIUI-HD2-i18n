.class Lcom/android/settings/AddAccountSettings$ProviderEntry;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderEntry"
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "providerName"
    .parameter "accountType"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/AddAccountSettings$ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 49
    iput-object p2, p0, Lcom/android/settings/AddAccountSettings$ProviderEntry;->type:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/AddAccountSettings$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/AddAccountSettings$ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method
