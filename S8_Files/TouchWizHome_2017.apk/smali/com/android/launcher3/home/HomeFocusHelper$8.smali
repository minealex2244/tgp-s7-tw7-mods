.class final Lcom/android/launcher3/home/HomeFocusHelper$8;
.super Ljava/lang/Object;
.source "HomeFocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    # invokes: Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/home/HomeFocusHelper;->access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
