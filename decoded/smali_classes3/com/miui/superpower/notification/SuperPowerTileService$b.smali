.class Lcom/miui/superpower/notification/SuperPowerTileService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/superpower/notification/SuperPowerTileService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/notification/SuperPowerTileService;


# direct methods
.method constructor <init>(Lcom/miui/superpower/notification/SuperPowerTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/notification/SuperPowerTileService$b;->a:Lcom/miui/superpower/notification/SuperPowerTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "tile"

    invoke-static {v0}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/superpower/notification/SuperPowerTileService$b;->a:Lcom/miui/superpower/notification/SuperPowerTileService;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    return-void
.end method
