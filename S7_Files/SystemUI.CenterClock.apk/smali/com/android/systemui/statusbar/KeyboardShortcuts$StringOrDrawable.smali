.class final Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringOrDrawable"
.end annotation


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 755
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringOrDrawable;->string:Ljava/lang/String;

    .line 751
    return-void
.end method
