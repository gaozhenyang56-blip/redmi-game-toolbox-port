.class final Lcom/miui/electricrisk/AiGuardSceneService$l$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/AiGuardSceneService$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioManager;

.field final synthetic b:Landroid/media/AudioManager$OnModeChangedListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l$a;->a:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/miui/electricrisk/AiGuardSceneService$l$a;->b:Landroid/media/AudioManager$OnModeChangedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/electricrisk/AiGuardSceneService$l$a;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService$l$a;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/electricrisk/AiGuardSceneService$l$a;->b:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-static {v0, v1}, Lcom/miui/electricrisk/e;->a(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V

    return-void
.end method
