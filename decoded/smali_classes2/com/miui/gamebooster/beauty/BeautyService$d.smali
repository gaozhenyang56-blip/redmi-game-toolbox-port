.class Lcom/miui/gamebooster/beauty/BeautyService$d;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BeautyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange! preName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; curName = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->E(Lcom/miui/gamebooster/beauty/BeautyService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/beauty/BeautyService;->F(Lcom/miui/gamebooster/beauty/BeautyService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/gamebooster/beauty/BeautyService;->G(Lcom/miui/gamebooster/beauty/BeautyService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {p2}, Lcom/miui/gamebooster/beauty/BeautyService;->H(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautyService$d;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    const-wide/16 v0, 0x7d0

    invoke-static {p2, v0, v1}, Lcom/miui/gamebooster/beauty/BeautyService;->I(Lcom/miui/gamebooster/beauty/BeautyService;J)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
