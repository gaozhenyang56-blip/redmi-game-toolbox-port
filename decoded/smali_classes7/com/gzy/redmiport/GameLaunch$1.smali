.class Lcom/gzy/redmiport/GameLaunch$1;
.super Ljava/lang/Object;
.source "GameLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/GameLaunch;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/gzy/redmiport/GameLaunch$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/gzy/redmiport/GameLaunch$1;->val$context:Landroid/content/Context;

    const-string v1, "\u65e0\u6cd5\u542f\u52a8\u6b64\u5e94\u7528\uff0c\u8bf7\u67e5\u770b\u65e5\u5fd7"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
