.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->showQSPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-set0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;Z)Z

    .line 574
    return-void
.end method
