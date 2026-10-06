.class public final Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/AiGuardSceneService;

.field final synthetic k:Lnk/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk/t<",
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/AiGuardSceneService;Lnk/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/electricrisk/AiGuardSceneService;",
            "Lnk/t<",
            "-",
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;->k:Lnk/t;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lastActivityComponent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curActivityComponent"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;->a:Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-static {v0}, Lcom/miui/electricrisk/AiGuardSceneService;->d(Lcom/miui/electricrisk/AiGuardSceneService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1$cb$1;->k:Lnk/t;

    invoke-static {p1, p2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    invoke-interface {v0, p1}, Lnk/z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
