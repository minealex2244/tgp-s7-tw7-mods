.class Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;
.super Ljava/lang/Object;
.source "AppsPickerContainerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    # getter for: Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->requestFocus()Z

    .line 149
    :cond_0
    return-void
.end method
