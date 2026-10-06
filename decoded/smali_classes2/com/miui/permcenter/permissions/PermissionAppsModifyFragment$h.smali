.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->c1(Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.permissions.PermissionAppsModifyFragment"
    f = "PermissionAppsModifyActivity.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xcd
    }
    m = "setPermissionTips"
    n = {
        "this",
        "permissionDescPreference"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field e:I


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->d:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Ltj/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->e:I

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$h;->d:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->A0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
