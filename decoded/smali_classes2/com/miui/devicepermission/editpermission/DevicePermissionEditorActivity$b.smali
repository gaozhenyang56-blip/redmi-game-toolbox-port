.class final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.miui.devicepermission.editpermission.DevicePermissionEditorActivity$onCreate$3"
    f = "DevicePermissionEditorActivity.kt"
    i = {}
    l = {
        0x3f,
        0x42
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;",
            "Ltj/d<",
            "-",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

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

    new-instance p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-direct {p1, v0, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->a:Ljava/lang/Object;

    iput v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->b:I

    invoke-static {v1, p0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->h0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->i0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)La5/b;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    const-string p1, "mAdapter"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v3}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->f0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, La5/b;->q(Ljava/util/ArrayList;)V

    sget-object p1, Lz4/e;->a:Lz4/e;

    invoke-virtual {p1}, Lz4/e;->a()Lkotlinx/coroutines/flow/r;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/r;)Lkotlinx/coroutines/flow/w;

    move-result-object p1

    new-instance v3, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;

    iget-object v4, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-direct {v3, v4}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)V

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->b:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
