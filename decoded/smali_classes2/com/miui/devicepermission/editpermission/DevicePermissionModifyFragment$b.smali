.class final Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.devicepermission.editpermission.DevicePermissionModifyFragment$onCreatePreferences$4"
    f = "DevicePermissionModifyActivity.kt"
    i = {}
    l = {
        0x72
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    sget-object p1, Lz4/e;->a:Lz4/e;

    invoke-virtual {p1}, Lz4/e;->a()Lkotlinx/coroutines/flow/r;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/r;)Lkotlinx/coroutines/flow/w;

    move-result-object p1

    new-instance v1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-direct {v1, v3}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)V

    iput v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
