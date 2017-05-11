.class Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;
.super Ljava/lang/Object;
.source "WidgetStateNormal.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/controller/WidgetStateNormal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetStateNormal;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetStateNormal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    iget-object v0, v0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;->this$0:Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    iget-object v0, v0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 27
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
