.class Lcom/miui/applicationlock/ConfirmAccessControl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->B0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-static {v0, v1}, Lc3/f;->w0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->A0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v0

    invoke-static {v0}, Lc3/f;->k(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong attempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->A0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmAccessControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1, v2, v0}, Lc3/f;->m0(JLandroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->C0(Lcom/miui/applicationlock/ConfirmAccessControl;J)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->D0(Lcom/miui/applicationlock/ConfirmAccessControl;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "binding"

    goto :goto_0

    :cond_0
    const-string v0, "no_binding"

    :goto_0
    invoke-static {v0}, La3/a;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->x0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    sget-object v1, Lcom/miui/applicationlock/ConfirmAccessControl$p;->b:Lcom/miui/applicationlock/ConfirmAccessControl$p;

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->E0(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$p;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->c:Lcom/miui/applicationlock/widget/e;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/o;->a()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->k1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc3/f;->j0(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->i1(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->F0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$d;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->H0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-static {v0, v1}, Lc3/f;->b(II)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method
