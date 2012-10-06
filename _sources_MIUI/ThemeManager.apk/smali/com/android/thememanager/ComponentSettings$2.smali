.class Lcom/android/thememanager/ComponentSettings$2;
.super Landroid/preference/PreferenceCategory;
.source "ComponentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ComponentSettings;->createPreferenceScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ComponentSettings;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ComponentSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/thememanager/ComponentSettings$2;->this$0:Lcom/android/thememanager/ComponentSettings;

    invoke-direct {p0, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings$2;->this$0:Lcom/android/thememanager/ComponentSettings;

    #getter for: Lcom/android/thememanager/ComponentSettings;->mFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/thememanager/ComponentSettings;->access$000(Lcom/android/thememanager/ComponentSettings;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
