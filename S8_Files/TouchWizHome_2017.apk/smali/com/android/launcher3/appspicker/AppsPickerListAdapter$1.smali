.class Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;
.super Ljava/lang/Object;
.source "AppsPickerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/AppsPickerListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const v2, 0x7f0f0030

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 51
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 53
    .local v1, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 54
    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;->this$0:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v2}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 58
    .end local v1    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void
.end method
