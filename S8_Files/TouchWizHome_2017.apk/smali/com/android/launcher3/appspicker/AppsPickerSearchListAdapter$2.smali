.class Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;
.super Ljava/lang/Object;
.source "AppsPickerSearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 73
    .local v0, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;->this$0:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    # getter for: Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    invoke-static {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 75
    .end local v0    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void
.end method
