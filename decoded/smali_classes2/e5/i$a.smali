.class Le5/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/IMiuiDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/i;->l0(Landroid/view/View;Landroid/view/View$DragShadowBuilder;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le5/i;


# direct methods
.method constructor <init>(Le5/i;)V
    .locals 0

    iput-object p1, p0, Le5/i$a;->a:Le5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Le5/i$a;)V
    .locals 0

    invoke-direct {p0}, Le5/i$a;->d()V

    return-void
.end method

.method public static synthetic b(Le5/i$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Le5/i$a;->e(Z)V

    return-void
.end method

.method public static synthetic c(Le5/i$a;)V
    .locals 0

    invoke-direct {p0}, Le5/i$a;->f()V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    invoke-virtual {v0}, Le5/i;->s()V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 2

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    invoke-static {v0}, Le5/i;->i(Le5/i;)Ls8/h;

    move-result-object v0

    iget-object v1, p0, Le5/i$a;->a:Le5/i;

    invoke-static {v1}, Le5/i;->h(Le5/i;)Lcom/miui/dock/sidebar/j;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ls8/h;->b0(Lcom/miui/dock/sidebar/j;Z)V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    invoke-static {v0}, Le5/i;->j(Le5/i;)V

    return-void
.end method


# virtual methods
.method public onEnd(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockItemDragController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Le5/i$a;->a:Le5/i;

    invoke-virtual {p1}, Le5/i;->h0()V

    iget-object p1, p0, Le5/i$a;->a:Le5/i;

    invoke-static {p1}, Le5/i;->f(Le5/i;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Le5/f;

    invoke-direct {v0, p0}, Le5/f;-><init>(Le5/i$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnterOrLeaveBar(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnterOrLeaveBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-static {v0, v1}, Le5/i;->g(Le5/i;I)I

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    invoke-static {v0}, Le5/i;->f(Le5/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Le5/g;

    invoke-direct {v1, p0, p1}, Le5/g;-><init>(Le5/i$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "DockItemDragController"

    const-string v1, "onStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le5/i$a;->a:Le5/i;

    invoke-static {v0}, Le5/i;->f(Le5/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Le5/h;

    invoke-direct {v1, p0}, Le5/h;-><init>(Le5/i$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
