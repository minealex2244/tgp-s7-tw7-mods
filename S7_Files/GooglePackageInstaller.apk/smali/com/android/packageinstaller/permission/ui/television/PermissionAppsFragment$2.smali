.class Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;
.super Ljava/lang/Object;
.source "PermissionAppsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

.field final synthetic val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

.field final synthetic val$grantedByDefault:Z

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Landroid/support/v7/preference/Preference;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;
    .param p2, "val$preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "val$app"    # Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .param p4, "val$grantedByDefault"    # Z

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$preference:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$grantedByDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$preference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->revokeRuntimePermissions()V

    .line 339
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->val$grantedByDefault:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;->-set0(Lcom/android/packageinstaller/permission/ui/television/PermissionAppsFragment;Z)Z

    .line 336
    :cond_0
    return-void
.end method
