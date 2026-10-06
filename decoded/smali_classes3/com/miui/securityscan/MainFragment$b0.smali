.class Lcom/miui/securityscan/MainFragment$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:J

.field private d:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$b0;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$b0;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/miui/securityscan/MainFragment$b0;->c:J

    iput p4, p0, Lcom/miui/securityscan/MainFragment$b0;->d:I

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Lcom/miui/antivirus/model/i;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/miui/antivirus/model/i;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object p1

    sget-object p2, Lo2/b$d;->a:Lo2/b$d;

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "incremental scan find virus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirusScanManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$b0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;I)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$b0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPredictScore incrementalScan end: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " oriAntiState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/securityscan/MainFragment$b0;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " score: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/securityscan/MainFragment$b0;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VirusScanManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/miui/securityscan/MainFragment$b0;->b:Z

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/miui/securityscan/MainFragment$b0;->d:I

    const/16 v0, 0x3b

    if-le p2, v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/securityscan/scanner/ScoreManager;->A()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lsf/i;->C:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lsf/i;->B:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p2, p1, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    const/16 v0, 0x321

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$b0;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/MainFragment$b0;->c:J

    sub-long/2addr v0, v2

    const-string p2, "incremental_scan_fg"

    invoke-static {p2, v0, v1}, Lqf/c;->Q0(Ljava/lang/String;J)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/securityscan/MainFragment;->Z:Z

    iput-boolean p2, p1, Lcom/miui/securityscan/MainFragment;->f0:Z

    iget-object p2, p1, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    new-instance v0, Lcom/miui/securityscan/MainFragment$g0;

    invoke-direct {v0, p1}, Lcom/miui/securityscan/MainFragment$g0;-><init>(Lcom/miui/securityscan/MainFragment;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/MainFragment$b0;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPredictScore incrementalScan start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securityscan/MainFragment$b0;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$b0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->A1()V

    :cond_0
    return-void
.end method
