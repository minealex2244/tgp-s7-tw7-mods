.class Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;
.super Ljava/lang/Object;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckBoxSelect(Lcom/samsung/android/glview/GLView;ZI)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "checked"    # Z
    .param p3, "commandId"    # I

    .prologue
    .line 1592
    if-eqz p2, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # operator++ for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$808(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    .line 1597
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1598
    return-void

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # operator-- for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCheckedCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$810(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    goto :goto_0
.end method
