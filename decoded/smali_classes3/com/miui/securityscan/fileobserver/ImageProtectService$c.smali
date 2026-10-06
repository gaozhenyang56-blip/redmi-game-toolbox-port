.class Lcom/miui/securityscan/fileobserver/ImageProtectService$c;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/fileobserver/ImageProtectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field final synthetic c:Lcom/miui/securityscan/fileobserver/ImageProtectService;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Lcom/miui/securityscan/fileobserver/ImageProtectService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->c:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    const p1, 0x40000500    # 2.0003052f

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->b:Z

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x40000100    # 2.000061f

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileObserver CREATE DIR name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->c:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->k(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 p2, 0x400

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->c:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->l(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->c:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->c(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;->c:Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-static {p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->d(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_2
    return-void
.end method
