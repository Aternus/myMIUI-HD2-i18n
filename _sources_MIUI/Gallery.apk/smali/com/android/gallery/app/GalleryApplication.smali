.class public Lcom/android/gallery/app/GalleryApplication;
.super Landroid/app/Application;
.source "GalleryApplication.java"


# static fields
.field public static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    sput-object p0, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    .line 13
    return-void
.end method
