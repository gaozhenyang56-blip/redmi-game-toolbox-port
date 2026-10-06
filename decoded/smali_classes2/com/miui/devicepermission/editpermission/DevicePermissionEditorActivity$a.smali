.class final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->k0(Ltj/d;)Ljava/lang/Object;
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
        "Ljava/util/ArrayList<",
        "Lz4/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.devicepermission.editpermission.DevicePermissionEditorActivity$loaderDevicePermissionInfo$2"
    f = "DevicePermissionEditorActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;",
            "Ltj/d<",
            "-",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Lak/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->e(Lak/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final e(Lak/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p1, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
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

    new-instance p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-direct {p1, v0, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;-><init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v0}, Lz4/b;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/permissions/acrossterminal/a$b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->a()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v5}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/acrossterminal/a$a;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v5}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a;->b:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v5}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->b()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lz4/a;

    invoke-virtual {v2}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->c()Ljava/lang/String;

    move-result-object v5

    const-string v3, "terminalPermissions.terminalName"

    invoke-static {v5, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/permcenter/permissions/acrossterminal/a$b;->d()I

    move-result v6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lz4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$a$a;

    new-instance v1, Lcom/miui/devicepermission/editpermission/a;

    invoke-direct {v1, v0}, Lcom/miui/devicepermission/editpermission/a;-><init>(Lak/p;)V

    invoke-static {p1, v1}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
