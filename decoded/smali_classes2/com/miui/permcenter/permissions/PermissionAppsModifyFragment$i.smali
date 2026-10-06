.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->n1(Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.permissions.PermissionAppsModifyFragment"
    f = "PermissionAppsModifyActivity.kt"
    i = {
        0x1,
        0x1
    }
    l = {
        0x2d6,
        0x2e1,
        0x2f5
    }
    m = "updateCheckboxContent"
    n = {
        "this",
        "$this$updateCheckboxContent_u24lambda_u2412"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field g:I


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->f:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

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

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->g:I

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$i;->f:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->C0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
