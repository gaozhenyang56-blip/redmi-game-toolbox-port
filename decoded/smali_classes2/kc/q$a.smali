.class Lkc/q$a;
.super Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkc/q;


# direct methods
.method constructor <init>(Lkc/q;)V
    .locals 0

    iput-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 6

    invoke-static {}, Lx4/z1;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->n(Lkc/q;)Lkc/q$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->n(Lkc/q;)Lkc/q$e;

    move-result-object v0

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkc/q$e;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkc/q;->A(Lkc/q;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    iget v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0, v1}, Lkc/q;->k(Lkc/q;I)I

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkc/q;->M(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lkc/q$a;->a:Lkc/q;

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lkc/q;->M(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    const-string v1, "MIUISafety-Monitor"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen protect change, now fg = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v2}, Lkc/q;->z(Lkc/q;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , protect = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->l(Lkc/q;)Lkc/c;

    move-result-object p1

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v0

    iget-object v1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v1}, Lkc/q;->z(Lkc/q;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v2}, Lkc/q;->j(Lkc/q;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lkc/c;->j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen share ensure fg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {v0}, Lkc/q;->z(Lkc/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " protect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->o(Lkc/q;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->p(Lkc/q;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->z(Lkc/q;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->j(Lkc/q;)I

    move-result v3

    const/16 v4, 0x2739

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setModeWithXSpace(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lkc/q$a;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->l(Lkc/q;)Lkc/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkc/c;->a(I)V

    :cond_3
    return-void
.end method
