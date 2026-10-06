.class final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lz4/a;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->f0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lz4/a;

    invoke-virtual {v2}, Lz4/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lz4/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lz4/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lz4/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    check-cast v0, Lz4/a;

    const-string p2, "DevicePermissionEditorActivity"

    if-nez v0, :cond_3

    const-string p1, "info is null"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v3}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lz4/a;->e()Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v3}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v4}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lz4/a;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v3}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->e0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)La5/b;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "mAdapter"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->f0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, La5/b;->q(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz4/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$b$a;->a(Lz4/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
