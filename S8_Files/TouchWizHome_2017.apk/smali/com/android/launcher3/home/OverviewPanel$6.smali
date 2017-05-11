.class Lcom/android/launcher3/home/OverviewPanel$6;
.super Ljava/lang/Object;
.source "OverviewPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/OverviewPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/OverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel$6;->this$0:Lcom/android/launcher3/home/OverviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 199
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 200
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 204
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 201
    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 202
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
