.class Lcom/miui/gamebooster/beauty/BeautyService$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkToDeath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    iget-object v1, v1, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyService;->x(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    sget-object v1, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/beauty/BeautyService;->y(Lcom/miui/gamebooster/beauty/BeautyService;Lcom/miui/gamebooster/beauty/BeautyService$i;)Lcom/miui/gamebooster/beauty/BeautyService$i;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/beauty/BeautyService;->z(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$g;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyService;->B(Lcom/miui/gamebooster/beauty/BeautyService;)V

    return-void
.end method
