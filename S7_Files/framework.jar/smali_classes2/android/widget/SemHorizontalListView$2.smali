.class Landroid/widget/SemHorizontalListView$2;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalListView;

    .prologue
    .line 4680
    iput-object p1, p0, Landroid/widget/SemHorizontalListView$2;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4682
    iget-object v0, p0, Landroid/widget/SemHorizontalListView$2;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalListView;->-get0(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->speakDescriptionForAccessibility()V

    .line 4681
    return-void
.end method
