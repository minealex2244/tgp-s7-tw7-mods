.class Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;
.super Ljava/lang/Object;
.source "AppsPickerContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 160
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    # getter for: Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;->this$0:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    # getter for: Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    invoke-static {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->access$200(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->onClick(Landroid/view/View;)Z

    .line 165
    return-void
.end method
